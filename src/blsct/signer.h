// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_SIGNER_H
#define NAVCOIN_BLSCT_SIGNER_H

#define BLS_ETH 1

#include <vector>
#include <blsct/arith/mcl/mcl.h>
#include <blsct/keys.h>
#include <blsct/signature.h>

namespace blsct {

using Message = std::vector<uint8_t>;

class Signer
{
public:
    // Basic scheme
    static Signature SignBalance(const PrivateKey& sk);
	static bool VerifyBalance(const PublicKey& pk, const Signature& sig);
    static bool VerifyBalanceBatch(const std::vector<PublicKey>& pks, const Signature& sig);

    // Message augmentation scheme
    static Signature Sign(const PrivateKey& sk, const Message& msg);
    static bool Verify(const PublicKey& pk, const Message& msg, const Signature& sig);
    static bool VerifyBatch(
        const std::vector<PublicKey>& pks, const std::vector<Message>& msgs, const Signature& sig);

#ifndef BOOST_UNIT_TEST
private:
#endif
    inline static const std::vector<uint8_t> BLSCTBALANCE = {
        'B', 'L', 'S', 'C', 'T', 'B', 'A', 'L', 'A', 'N', 'C', 'E'
    };

    static blsPublicKey BlsPublicKeyOf(const PublicKey& pk);
    static std::vector<uint8_t> AugmentMessage(const PublicKey& pk, const std::vector<uint8_t> msg);

    // Core operations
	static Signature CoreSign(const PrivateKey& sk, const Message& msg);
	static bool CoreVerify(const PublicKey& pk, const Message& msg, const Signature& sig);
    static bool CoreAggregateVerify(
        const std::vector<PublicKey>& pks, const std::vector<Message> msgs, const Signature& sig);
};

}

#endif  // NAVCOIN_BLSCT_SIGNER_H
