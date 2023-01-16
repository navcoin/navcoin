// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/signature.h>  // this has to be included before bls/*

#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>


namespace blsct {

blsct::Signature Signature::Aggregate(std::vector<blsct::Signature> vSignatures)
{
    blsct::Signature x;
    return x;
}

}  // namespace blsct
