// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/signer.h>
#include <blsct/util.h>

namespace blsct {

bool Signer::VerifyBalance(PublicKey pk)
{
    return true;
}

bool Signer::VerifyBalanceBatch(std::vector<PublicKey> vPk)
{
    return true;
}

bool Signer::Verify(PublicKey pk, std::vector<uint8_t> msg)
{
    return true;
}

bool Signer::VerifyBatch(std::vector<PublicKey> vPk, std::vector<std::vector<uint8_t>> vMsg)
{
    return true;
}

Signature Signer::CoreSign(const PrivateKey& sk, const std::vector<uint8_t>& message)
{
    blsSecretKey bls_sk;
    bls_sk.v = sk.GetScalar().m_fr;

    Signature sig;
    blsSign(&sig.data, &bls_sk, &message[0], message.size());

    return sig;
}

bool Signer::CoreVerify(const PublicKey& pk, const std::vector<uint8_t> message)
{
    //auto bls_pk = blsPublicKey();
    // 1 if valid else 0
    //auto res = blsVerify(&data, const blsSignature *sig, const blsPublicKey *pub, const void *m, mclSize size);

    return true;
}

// return the result of CoreSign(privateKey, "BLSCTBALANCE")
Signature Signer::SignBalance(const PrivateKey& sk, const MclScalar& balance)
{
    auto balance_array = Util::uint64_to_bytes(balance.GetUint64());
    std::vector<uint8_t> message(balance_array.cbegin(), balance_array.cend());
    auto sig = CoreSign(sk, message);
    return sig;
}

// return the result of AugmentedSchemeSign(privateKey, msg")
Signature Signer::Sign(std::vector<unsigned char> msg)
{
    Signature sig;
    return sig;
}

}