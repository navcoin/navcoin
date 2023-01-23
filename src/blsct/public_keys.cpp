// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#define BLS_ETH 1

#include <blsct/bls12_381_common.h>
#include <blsct/public_keys.h>
#include <tinyformat.h>

namespace blsct {

bool PublicKeys::CoreAggregateVerify(const std::vector<PublicKey>& pks, const std::vector<PublicKey::Message>& msgs, const Signature& sig)
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

bool PublicKeys::VerifyBatch(const std::vector<PublicKey::Message>& msgs, const Signature& sig)
{
    if (m_pks.size() != msgs.size() || m_pks.size() == 0) {
        throw std::runtime_error(strprintf(
            "Expected the same positive numbers of public keys and messages, but got: %ld public keys and %ld messages", m_pks.size(), msgs.size()));
    }
    std::vector<std::vector<uint8_t>> aug_msgs;
    for (size_t i=0; i<m_pks.size(); ++i) {
        aug_msgs.push_back(BLS12_381_Common::AugmentMessage(m_pks[i], msgs[i]));
    }
    return CoreAggregateVerify(m_pks, aug_msgs, sig);
}

}  // namespace blsct
