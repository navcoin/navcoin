// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// signining/verification part of implementation is based on:
// https://www.ietf.org/archive/id/draft-irtf-cfrg-bls-signature-05.html

#ifndef NAVCOIN_BLSCT_SIGNATURE_H
#define NAVCOIN_BLSCT_SIGNATURE_H

#include <blsct/keys.h>
#include <blsct/signature.h>
#include <vector>

namespace blsct {

class Signature
{
public:
	// returns the result of CoreVerify(pk, "BLSCTBALANCE", signature)
	bool VerifyBalance(PublicKey pk);

	// returns the result of CoreVerify(PublicKey::Aggregate(vPk), "BLSCTBALANCE", signature)
	bool VerifyBalanceBatch(std::vector<PublicKey> vPk);

	// returns the result of AugmentedSchemeVerify(pk, msg, signature)
	bool Verify(PublicKey pk, std::vector<uint8_t> msg);

	// returns the result of AugmentedSchemeAggregateVerify(vPk, vMsg, signature)
	bool VerifyBatch(std::vector<PublicKey> vPk, std::vector<std::vector<uint8_t>> vMsg);

	// returns the addition of the signatures contained in vSignatures;
    blsct::Signature Aggregate(std::vector<blsct::Signature> vSignatures);

#ifndef BOOST_UNIT_TEST
private:
#endif

	std::vector<uint8_t> CoreSign(PrivateKey SK, std::vector<uint8_t> message);
};

}  // namespace blsct

#endif  // NAVCOIN_BLSCT_SIGNATURE_H
