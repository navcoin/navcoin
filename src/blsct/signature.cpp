// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/signature.h>

namespace blsct {

bool Signature::VerifyBalance(blsct::PublicKey pk)
{
}

bool Signature::VerifyBalanceBatch(std::vector<blsct::PublicKey> vPk)
{
}

bool Signature::Verify(blsct::PublicKey pk, std::vector<unsigned char> msg)
{
}

bool Signature::VerifyBatch(std::vector<blsct::PublicKey> vPk, std::vector<std::vector<unsigned char>> vMsg)
{
}

blsct::Signature Signature::Aggregate(std::vector<blsct::Signature> vSignatures)
{
}

}  // namespace blsct
