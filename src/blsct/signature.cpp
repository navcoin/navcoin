// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/signature.h>

namespace blsct {

bool Signature::VerifyBalance(blsct::PublicKey pk)
{
    return true;
}

bool Signature::VerifyBalanceBatch(std::vector<blsct::PublicKey> vPk)
{
    return true;
}

bool Signature::Verify(blsct::PublicKey pk, std::vector<uint8_t> msg)
{
    return true;
}

bool Signature::VerifyBatch(std::vector<blsct::PublicKey> vPk, std::vector<std::vector<uint8_t>> vMsg)
{
    return true;
}

blsct::Signature Signature::Aggregate(std::vector<blsct::Signature> vSignatures)
{
    blsct::Signature x;
    return x;
}

}  // namespace blsct
