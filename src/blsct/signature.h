// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// signining/verification part of implementation is based on:
// https://www.ietf.org/archive/id/draft-irtf-cfrg-bls-signature-05.html

#ifndef NAVCOIN_BLSCT_SIGNATURE_H
#define NAVCOIN_BLSCT_SIGNATURE_H

#include <blsct/arith/mcl/mcl.h>   // to define `BLS_ETH` macro.needed to setup bls library correctly

#include <blsct/keys.h>
#include <blsct/signature.h>
#include <vector>

namespace blsct {

class Signature
{
public:
    // returns the addition of the signatures contained in vSignatures;
    static Signature Aggregate(const std::vector<blsct::Signature>& vSignatures);

    blsSignature m_data;
};

}  // namespace blsct

#endif  // NAVCOIN_BLSCT_SIGNATURE_H
