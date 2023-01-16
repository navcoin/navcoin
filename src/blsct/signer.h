// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_SIGNER_H
#define NAVCOIN_BLSCT_SIGNER_H

#include <vector>
#include <blsct/arith/mcl/mcl.h>
#include <blsct/keys.h>
#include <blsct/signature.h>

namespace blsct {

class Signer
{
public:
    // return the result of CoreSign(privateKey, "BLSCTBALANCE")
    static Signature SignBalance(const PrivateKey& sk, const MclScalar& balance);

    // return the result of AugmentedSchemeSign(privateKey, msg")
    static Signature Sign(const PrivateKey& sk, const std::vector<unsigned char>& msg);

	// returns the result of CoreVerify(pk, "BLSCTBALANCE", signature)
	static bool VerifyBalance(const PublicKey& pk, const MclScalar& balance, const Signature& sig);

	// returns the result of CoreVerify(PublicKey::Aggregate(vPk), "BLSCTBALANCE", signature)
	static bool VerifyBalanceBatch(const std::vector<PublicKey>& vPk);

	// returns the result of AugmentedSchemeVerify(pk, msg, signature)
	static bool Verify(const PublicKey& pk, const std::vector<uint8_t>& msg);

	// returns the result of AugmentedSchemeAggregateVerify(vPk, vMsg, signature)
	static bool VerifyBatch(const std::vector<PublicKey>& vPk, const std::vector<std::vector<uint8_t>>& vMsg);

#ifndef BOOST_UNIT_TEST
private:
#endif
    static std::vector<uint8_t> GenMessageFromBalance(const MclScalar& balance);

	static Signature CoreSign(const PrivateKey& sk, const std::vector<uint8_t>& message);

	static bool CoreVerify(const PublicKey& pk, const std::vector<uint8_t> message, const Signature& sig);
};

}

#endif  // NAVCOIN_BLSCT_SIGNER_H
