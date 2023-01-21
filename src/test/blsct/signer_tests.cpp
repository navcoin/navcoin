// Copyright (c) 2022 The Navcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#define BOOST_UNIT_TEST
#define BLS_ETH 1

#include <boost/test/unit_test.hpp>
#include <test/util/setup_common.h>
#include <util/strencodings.h>
#include <blsct/signer.h>

namespace blsct {

BOOST_FIXTURE_TEST_SUITE(blsct_signer_tests, MclTestingSetup)

BOOST_AUTO_TEST_CASE(test_compatibility_bet_bls_keys_and_blsct_keys)
{
    // secret key
    blsSecretKey bls_sk{1};
    blsct::PrivateKey blsct_sk(bls_sk.v);
    auto a = blsct_sk.GetScalar().m_fr;
    auto b = bls_sk.v;
    BOOST_CHECK(mclBnFr_isEqual(&a, &b) == 1);

    // public key
    blsct::PublicKey blsct_pk = blsct_sk.GetPublicKey();
    MclG1Point blsct_g1_point;
    blsct_pk.GetG1Point(blsct_g1_point);

    blsPublicKey bls_pk;
    blsGetPublicKey(&bls_pk, &bls_sk);
    auto c = blsct_g1_point.m_p;
    auto d = bls_pk.v;
    BOOST_CHECK(mclBnG1_isEqual(&c, &d) == 1);
}

BOOST_AUTO_TEST_CASE(test_sign_verify_balance)
{
    blsct::PrivateKey sk(1);

    auto pk = sk.GetPublicKey();
    auto sig = blsct::Signer::SignBalance(sk);

    auto res = blsct::Signer::VerifyBalance(pk, sig);
    BOOST_CHECK(res == true);
}

BOOST_AUTO_TEST_CASE(test_sign_verify_balance_batch)
{
    blsct::PrivateKey sk1(1);
    blsct::PrivateKey sk2(12345);

    std::vector<blsct::PublicKey> pks {
        sk1.GetPublicKey(),
        sk2.GetPublicKey(),
    };
    std::vector<blsct::Signature> sigs {
        blsct::Signer::SignBalance(sk1),
        blsct::Signer::SignBalance(sk2),
    };
    auto aggr_sig = blsct::Signature::Aggregate(sigs);

    auto res = blsct::Signer::VerifyBalanceBatch(pks, aggr_sig);
    BOOST_CHECK(res == true);
}

BOOST_AUTO_TEST_CASE(test_sign_verify_balance_batch_bad_inputs)
{
    std::vector<blsct::PublicKey> pks;
    blsct::Signature aggr_sig;
    BOOST_CHECK_THROW(blsct::Signer::VerifyBalanceBatch(pks, aggr_sig), std::runtime_error);
}

BOOST_AUTO_TEST_CASE(test_augment_message)
{
    std::vector<uint8_t> pk_data(blsct::PublicKey::SIZE);
    auto pk = blsct::PublicKey(pk_data);
    auto msg = std::vector<uint8_t> { 1, 2, 3, 4, 5 };
    auto act = blsct::Signer::AugmentMessage(pk, msg);

    auto exp = std::vector<uint8_t>(pk_data);
    exp.insert(exp.end(), msg.begin(), msg.end());
    BOOST_CHECK(act == exp);
}

BOOST_AUTO_TEST_CASE(test_sign_verify)
{
    blsct::PrivateKey sk(1);
    auto pk = sk.GetPublicKey();
    std::vector<uint8_t> msg {'m', 's', 'g'};

    auto sig = blsct::Signer::Sign(sk, msg);
    auto res = blsct::Signer::Verify(pk, msg, sig);
    BOOST_CHECK(res == true);
}

BOOST_AUTO_TEST_CASE(test_verify_batch)
{
    blsct::PrivateKey sk1(1);
    blsct::PrivateKey sk2(12345);

    std::vector<blsct::PublicKey> pks {
        sk1.GetPublicKey(),
        sk2.GetPublicKey(),
    };
    std::vector<std::vector<uint8_t>> msgs {
        std::vector<uint8_t> {'m', 's', 'g', '1'},
        std::vector<uint8_t> {'m', 's', 'g', '2'},
    };
    std::vector<blsct::Signature> sigs {
        blsct::Signer::Sign(sk1, msgs[0]),
        blsct::Signer::Sign(sk2, msgs[1]),
    };
    auto aggr_sig = blsct::Signature::Aggregate(sigs);

    auto res = blsct::Signer::VerifyBatch(pks, msgs, aggr_sig);
    BOOST_CHECK(res == true);
}

BOOST_AUTO_TEST_CASE(test_verify_batch_bad_inputs)
{
    blsct::Signature sig;
    {
        // empty pks
        std::vector<PublicKey> empty_pks;
        std::vector<std::vector<uint8_t>> msgs {
            std::vector<uint8_t> {'m', 's', 'g'},
        };
        BOOST_CHECK_THROW(Signer::VerifyBatch(empty_pks, msgs, sig), std::runtime_error);
    }
    {
        // empty msgs
        std::vector<PublicKey> pks {
            PublicKey(),
        };
        std::vector<std::vector<uint8_t>> empty_msgs;
        BOOST_CHECK_THROW(Signer::VerifyBatch(pks, empty_msgs, sig), std::runtime_error);
    }
    {
        // numbers of pks and msgs don't match
        std::vector<PublicKey> pks {
            PublicKey(),
        };
        std::vector<std::vector<uint8_t>> msgs {
            std::vector<uint8_t> {'m', 's', 'g'},
            std::vector<uint8_t> {'m', 's', 'g'},
        };
        BOOST_CHECK_THROW(Signer::VerifyBatch(pks, msgs, sig), std::runtime_error);
    }
}

BOOST_AUTO_TEST_SUITE_END()

}