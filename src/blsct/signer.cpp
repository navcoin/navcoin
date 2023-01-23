// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/signer.h>
#include <tinyformat.h>

namespace blsct {

Signature Signer::CoreSign(const PrivateKey& sk, const Message& msg)
{
    blsSecretKey bls_sk { sk.GetScalar().Underlying() };

    Signature sig;
    blsSign(&sig.m_data, &bls_sk, &msg[0], msg.size());
    return sig;
}

bool Signer::CoreVerify(const PublicKey& pk, const Message& msg, const Signature& sig)
{
    auto bls_pk = pk.ToBlsPublicKey();
    auto res = blsVerify(&sig.m_data, &bls_pk, &msg[0], msg.size());
    return res == 1;
}

bool Signer::CoreAggregateVerify(const std::vector<PublicKey>& pks, const std::vector<Message> msgs, const Signature& sig)
{
    assert(pks.size() == msgs.size());

    std::vector<blsPublicKey> bls_pks;
    std::transform(pks.begin(), pks.end(), std::back_inserter(bls_pks), [](const auto& pk) {
        return pk.ToBlsPublicKey();
    });

    // find the largest message size
    auto bls_msg_size = std::max_element(msgs.begin(), msgs.end(), [](const auto& a, const auto& b) {
        return a.size() < b.size();
    })->size();
    const size_t n = pks.size();


    // copy all msgs to a vector of message buffers of the largest message size
    std::vector<uint8_t> bls_msgs(bls_msg_size * n);
    for (size_t i=0; i<n; ++i) {
        uint8_t* msg_beg = &bls_msgs[i * bls_msg_size];
        std::memset(msg_beg, 0, bls_msg_size);
        auto msg = msgs[i];
        std::memcpy(msg_beg, &msg[0], msg.size());
    }

    auto res = blsAggregateVerifyNoCheck(
        &sig.m_data,
        &bls_pks[0],
        &bls_msgs[0],
        bls_msg_size,
        n
    );
    return res;
}

Signature Signer::SignBalance(const PrivateKey& sk)
{
    return CoreSign(sk, BLSCTBALANCE);
}

bool Signer::VerifyBalance(const PublicKey& pk, const Signature& sig)
{
	return CoreVerify(pk, BLSCTBALANCE, sig);
}

bool Signer::VerifyBalanceBatch(const std::vector<PublicKey>& pks, const Signature& sig)
{
    auto aggr_pk = PublicKey::Aggregate(pks);
	return CoreVerify(aggr_pk, BLSCTBALANCE, sig);
}

std::vector<uint8_t> Signer::AugmentMessage(const PublicKey& pk, const Message msg)
{
    auto pk_data = pk.GetVch();
    std::vector<uint8_t> aug_msg(pk_data);
    aug_msg.insert(aug_msg.end(), msg.begin(), msg.end());
    return aug_msg;
}

Signature Signer::Sign(const PrivateKey& sk, const Message& msg)
{
    auto pk = sk.GetPublicKey();
    auto aug_msg = AugmentMessage(pk, msg);
    auto sig = CoreSign(sk, aug_msg);
    return sig;
}

bool Signer::Verify(const PublicKey& pk, const Message& msg, const Signature& sig)
{
    auto aug_msg = AugmentMessage(pk, msg);
    auto res = CoreVerify(pk, aug_msg, sig);
    return res;
}

bool Signer::VerifyBatch(
    const std::vector<PublicKey>& pks, const std::vector<Message>& msgs, const Signature& sig)
{
    if (pks.size() != msgs.size() || pks.size() == 0) {
        throw std::runtime_error(strprintf(
            "Expected the same positive numbers of public keys and messages, but got: %ld public keys and %ld messages", pks.size(), msgs.size()));
    }
    std::vector<std::vector<uint8_t>> aug_msgs;
    for (size_t i=0; i<pks.size(); ++i) {
        aug_msgs.push_back(AugmentMessage(pks[i], msgs[i]));
    }
    return CoreAggregateVerify(pks, aug_msgs, sig);
}

}
