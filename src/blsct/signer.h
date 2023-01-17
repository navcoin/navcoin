// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_SIGNER_H
#define NAVCOIN_BLSCT_SIGNER_H

#define BLS_ETH

#include <vector>
#include <blsct/arith/mcl/mcl.h>
#include <blsct/keys.h>
#include <blsct/signature.h>

namespace blsct {

class Signer
{
public:
    static Signature SignBalance(const PrivateKey& sk);
    static Signature Sign(const PrivateKey& sk, const std::vector<uint8_t>& msg);

	static bool VerifyBalance(const PublicKey& pk, const Signature& sig);

    static bool VerifyBalanceBatch(const std::vector<PublicKey>& vPk, const Signature& sig);
    static bool Verify(const PublicKey& pk, const std::vector<uint8_t>& msg, const Signature& sig);
    static bool VerifyBatch(const std::vector<PublicKey>& vPk, const std::vector<std::vector<uint8_t>>& vMsg, const Signature& sig);

#ifndef BOOST_UNIT_TEST
private:
#endif
    inline static const std::vector<uint8_t> BLSCTBALANCE = { 'B', 'L', 'S', 'C', 'T', 'B', 'A', 'L', 'A', 'N', 'C', 'E' };

	static Signature CoreSign(const PrivateKey& sk, const std::vector<uint8_t>& message);
	static bool CoreVerify(const PublicKey& pk, const std::vector<uint8_t>& message, const Signature& sig);
};

}

#endif  // NAVCOIN_BLSCT_SIGNER_H
