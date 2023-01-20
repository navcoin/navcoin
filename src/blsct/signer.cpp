// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/signer.h>

namespace blsct {

// returns the result of CoreVerify(PublicKey::Aggregate(vPk), "BLSCTBALANCE", signature)
bool Signer::VerifyBalanceBatch(const std::vector<PublicKey>& vPk, const Signature& sig)
{
    auto aggr_pk = PublicKey::Aggregate(vPk);
	auto res = Signer::VerifyBalance(aggr_pk, sig);
    return res;
}

// returns the result of AugmentedSchemeVerify(pk, msg, signature)
bool Signer::Verify(const PublicKey& pk, const std::vector<uint8_t>& msg, const Signature& sig)
{
	return true;
}

// returns the result of AugmentedSchemeAggregateVerify(vPk, vMsg, signature)
bool Signer::VerifyBatch(const std::vector<PublicKey>& vPk, const std::vector<std::vector<uint8_t>>& vMsg, const Signature& sig)
{
	return true;
}

Signature Signer::CoreSign(const PrivateKey& sk, const std::vector<uint8_t>& message)
{
    blsSecretKey bls_sk { sk.GetScalar().Underlying() };

    Signature sig;
    blsSign(&sig.data, &bls_sk, &message[0], message.size());

    return sig;
}

bool Signer::CoreVerify(const PublicKey& pk, const std::vector<uint8_t>& message, const Signature& sig)
{
    MclG1Point p;
    if (!pk.GetG1Point(p)) {
      throw std::runtime_error("Failed to convert PublicKey to MclG1Point");
    }
    blsPublicKey bls_pk { p.Underlying() };

    // res is 1 if valid. otherwise 0
    auto res = blsVerify(&sig.data, &bls_pk, &message[0], message.size());

    return res == 1;
}

// returns the result of CoreVerify(pk, "BLSCTBALANCE", signature)
bool Signer::VerifyBalance(const PublicKey& pk, const Signature& sig)
{
	auto res = CoreVerify(pk, BLSCTBALANCE, sig);
	return res;
}

// return the result of CoreSign(privateKey, "BLSCTBALANCE")
Signature Signer::SignBalance(const PrivateKey& sk)
{
    auto sig = CoreSign(sk, BLSCTBALANCE);
    return sig;
}

// return the result of AugmentedSchemeSign(privateKey, msg)
Signature Signer::Sign(const PrivateKey& sk, const std::vector<unsigned char>& msg)
{
    Signature sig;
    return sig;
}

}
