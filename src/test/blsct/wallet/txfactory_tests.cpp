// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/wallet/txfactory.h>
#include <test/util/random.h>
#include <test/util/setup_common.h>
#include <txdb.h>
#include <wallet/receive.h>
#include <wallet/test/util.h>
#include <wallet/wallet.h>

#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(blsct_txfactory_tests)

BOOST_FIXTURE_TEST_CASE(ismine_test, TestingSetup)
{
    wallet::DatabaseOptions options;
    options.create_flags |= wallet::WALLET_FLAG_BLSCT;

    std::shared_ptr<wallet::CWallet> wallet(new wallet::CWallet(m_node.chain.get(), "", wallet::CreateMockWalletDatabase(options)));

    LOCK(wallet->cs_wallet);
    auto blsct_km = wallet->GetOrCreateBLSCTKeyMan();
    BOOST_CHECK(blsct_km->SetupGeneration(true));

    auto recvAddress = blsct::SubAddress(std::get<blsct::DoublePublicKey>(blsct_km->GetNewDestination(0).value()));

    auto out = blsct::TxFactory::CreateOutput(recvAddress, 1000, "test");

    BOOST_ASSERT(blsct_km->IsMine(out.out));

    auto hashId = blsct_km->GetHashId(out.out);
    blsct::SubAddress subAddressId;

    {
        LOCK(blsct_km->cs_KeyStore);
        BOOST_ASSERT(blsct_km->GetSubAddress(hashId, subAddressId));
    }

    auto result = blsct_km->RecoverOutputs({out.out}).value();

    BOOST_CHECK(result.is_completed);
    auto xs = result.amounts;
    BOOST_CHECK(xs.size() == 1);
    BOOST_CHECK(xs[0].value().amount == 1000);
    BOOST_CHECK(xs[0].value().message == "test");
}

BOOST_FIXTURE_TEST_CASE(addinput_test, TestingSetup)
{
    SeedInsecureRand(SeedRand::ZEROS);
    CCoinsViewDB base{{.path = "test", .cache_bytes = 1 << 23, .memory_only = true}, {}};

    wallet::DatabaseOptions options;
    options.create_flags |= wallet::WALLET_FLAG_BLSCT;

    std::shared_ptr<wallet::CWallet> wallet(new wallet::CWallet(m_node.chain.get(), "", wallet::CreateMockWalletDatabase(options)));

    LOCK(wallet->cs_wallet);
    auto blsct_km = wallet->GetOrCreateBLSCTKeyMan();
    BOOST_CHECK(blsct_km->SetupGeneration(true));

    auto recvAddress = blsct::SubAddress(std::get<blsct::DoublePublicKey>(blsct_km->GetNewDestination(0).value()));

    const uint256 txid{InsecureRand256()};
    COutPoint outpoint{txid, /*nIn=*/0};

    Coin coin;
    auto out = blsct::TxFactory::CreateOutput(recvAddress, 1000, "test");
    coin.nHeight = 1;
    coin.out = out.out;

    auto tx = blsct::TxFactory(blsct_km);

    {
        CCoinsViewCache coins_view_cache{&base, /*deterministic=*/true};
        coins_view_cache.SetBestBlock(InsecureRand256());
        coins_view_cache.AddCoin(outpoint, std::move(coin), true);
        BOOST_ASSERT(coins_view_cache.Flush());
    }

    CCoinsViewCache coins_view_cache{&base, /*deterministic=*/true};
    BOOST_ASSERT(tx.AddInput(coins_view_cache, outpoint));

    tx.AddOutput(recvAddress, 900, "test");

    auto finalTx = tx.BuildTx();

    BOOST_ASSERT(finalTx.has_value());

    bool fFoundChange = false;

    auto result = blsct_km->RecoverOutputs(finalTx.value().vout).value();

    for (auto& res : result.amounts) {
        if (!res.has_value()) continue;
        if (res.value().message == "Change" && res.value().amount == 100) fFoundChange = true;
    }

    BOOST_ASSERT(fFoundChange);

    wallet->transactionAddedToMempool(MakeTransactionRef(finalTx.value()));

    auto wtx = wallet->GetWalletTx(finalTx.value().GetHash());
    BOOST_ASSERT(wtx != nullptr);

    fFoundChange = false;
    uint32_t nChangePosition = 0;

    for (auto& res : wtx->blsctRecoveryData) {
        if (res.second.message == "Change" && res.second.amount == 100) {
            nChangePosition = res.second.id;
            fFoundChange = true;
            break;
        }
    }

    BOOST_ASSERT(fFoundChange);

    auto tx2 = blsct::TxFactory(blsct_km);
    auto outpoint2 = COutPoint(finalTx.value().GetHash(), nChangePosition);
    Coin coin2;
    coin2.nHeight = 1;
    coin2.out = finalTx.value().vout[nChangePosition];
    coins_view_cache.AddCoin(outpoint2, std::move(coin2), true);

    BOOST_ASSERT(tx2.AddInput(coins_view_cache, outpoint2));

    blsct::SubAddress randomAddress(blsct::DoublePublicKey(MclG1Point::MapToG1("test1"), MclG1Point::MapToG1("test2")));
    tx2.AddOutput(randomAddress, 50, "test");

    auto finalTx2 = tx2.BuildTx();
    wallet->transactionAddedToMempool(MakeTransactionRef(finalTx2.value()));

    BOOST_ASSERT(wallet->GetDebit(CTransaction(finalTx2.value()), wallet::ISMINE_SPENDABLE_BLSCT) == 100);
    BOOST_ASSERT(TxGetCredit(*wallet, CTransaction(finalTx2.value()), wallet::ISMINE_SPENDABLE_BLSCT) == 50);
}

BOOST_AUTO_TEST_SUITE_END()
