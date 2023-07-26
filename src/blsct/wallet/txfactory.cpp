// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/wallet/txfactory.h>

using T = Mcl;
using Point = T::Point;
using Points = Elements<Point>;
using Scalar = T::Scalar;
using Scalars = Elements<Scalar>;

namespace blsct {

void UnsignedOutput::GenerateKeys(Scalar blindingKey, DoublePublicKey destKeys)
{
    out.blsctData.ephemeralKey = PrivateKey(blindingKey).GetPoint();

    Point vk, sk;

    if (!destKeys.GetViewKey(vk)) {
        throw std::runtime_error(strprintf("%s: could not get view key from destination address\n", __func__));
    }

    if (!destKeys.GetSpendKey(sk)) {
        throw std::runtime_error(strprintf("%s: could not get spend key from destination address\n", __func__));
    }

    out.blsctData.blindingKey = sk * blindingKey;

    auto rV = vk * blindingKey;

    out.blsctData.spendingKey = sk + (PrivateKey(Scalar(rV.GetHashWithSalt(0))).GetPoint());
}

UnsignedOutput TxFactory::CreateOutput(const SubAddress& destination, const CAmount& nAmount, std::string sMemo, const TokenId& tokenId)
{
    auto ret = UnsignedOutput();

    ret.out.tokenId = tokenId;

    Scalars vs;
    vs.Add(nAmount);

    auto destKeys = destination.GetKeys();
    auto blindingKey = Scalar::Rand();

    Points nonces;
    Point vk;

    if (!destKeys.GetViewKey(vk)) {
        throw std::runtime_error(strprintf("%s: could not get view key from destination address\n", __func__));
    }

    auto nonce = vk * blindingKey;
    nonces.Add(nonce);

    Scalar gamma = nonce.GetHashWithSalt(100);

    std::vector<unsigned char> memo{sMemo.begin(), sMemo.end()};

    RangeProofLogic<T> rp;
    auto p = rp.Prove(vs, nonce, memo, tokenId);

    ret.out.blsctData.rangeProof = p;

    CHashWriter hash(SER_GETHASH, PROTOCOL_VERSION);
    hash << nonce;

    ret.GenerateKeys(blindingKey, destKeys);
    ret.out.blsctData.viewTag = (hash.GetHash().GetUint64(0) & 0xFFFF);

    return ret;
}

void TxFactory::AddOutput(const SubAddress& destination, const CAmount& nAmount, std::string sMemo, const TokenId& tokenId)
{
    UnsignedOutput out;
    out = TxFactory::CreateOutput(destination, nAmount, sMemo, tokenId);
    gammaAcc = gammaAcc + out.gamma;
    nOutputAmount += nAmount;
    vOutputs.push_back(out);
}

bool TxFactory::AddInput(const CCoinsViewCache& cache, const COutPoint& outpoint)
{
    Coin coin;

    if (!cache.GetCoin(outpoint, coin))
        return false;

    auto recoveredInfo = km->RecoverOutputs(std::vector<CTxOut>{coin.out});

    if (!recoveredInfo.has_value())
        return false;

    vInputs.push_back({CTxIn(outpoint), recoveredInfo.value().amounts[0].value().gamma});
    nInputAmount += recoveredInfo.value().amounts[0].value().amount;

    return true;
}
} // namespace blsct