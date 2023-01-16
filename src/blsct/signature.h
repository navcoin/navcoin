// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_SIGNATURE_H
#define NAVCOIN_BLSCT_SIGNATURE_H

namespace blsct {
class Signature
{
public:
	// returns the result of CoreVerify(pk, "BLSCTBALANCE", signature)
	VerifyBalance(blsct::PublicKey pk);

	// returns the result of CoreVerify(PublicKey::Aggregate(vPk), "BLSCTBALANCE", signature)
	VerifyBalanceBatch(std::vector<blsct::PublicKey> vPk);

	// returns the result of AugmentedSchemeVerify(pk, msg, signature)
	Verify(blsct::PublicKey pk, std::vector<unsigned char> msg);

	// returns the result of AugmentedSchemeAggregateVerify(vPk, vMsg, signature)
	VerifyBatch(std::vector<blsct::PublicKey> vPk, std::vector<std::vector<unsigned char>> vMsg);

	// returns the addition of the signatures contained in vSignatures;
	Aggregate(std::vector<blsct::Signature> vSignatures);
};
}  // namespace blsct

#endif  // NAVCOIN_BLSCT_SIGNATURE_H
