// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// signining/verification part of implementation is based on:
// https://www.ietf.org/archive/id/draft-irtf-cfrg-bls-signature-05.html

#ifndef NAVCOIN_BLSCT_SIGNATURE_H
#define NAVCOIN_BLSCT_SIGNATURE_H

namespace blsct {

class Signature
{
public:
	// returns the result of CoreVerify(pk, "BLSCTBALANCE", signature)
	bool VerifyBalance(blsct::PublicKey pk);

	// returns the result of CoreVerify(PublicKey::Aggregate(vPk), "BLSCTBALANCE", signature)
	bool VerifyBalanceBatch(std::vector<blsct::PublicKey> vPk);

	// returns the result of AugmentedSchemeVerify(pk, msg, signature)
	bool Verify(blsct::PublicKey pk, std::vector<unsigned char> msg);

	// returns the result of AugmentedSchemeAggregateVerify(vPk, vMsg, signature)
	bool VerifyBatch(std::vector<blsct::PublicKey> vPk, std::vector<std::vector<unsigned char>> vMsg);

	// returns the addition of the signatures contained in vSignatures;
    blsct::Signature Aggregate(std::vector<blsct::Signature> vSignatures);
};

}  // namespace blsct

#endif  // NAVCOIN_BLSCT_SIGNATURE_H
