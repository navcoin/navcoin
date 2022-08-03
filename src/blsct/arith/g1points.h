// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_G1POINTS_H
#define NAVCOIN_BLSCT_ARITH_G1POINTS_H

#include <blsct/arith/elements.h>
#include <blsct/arith/g1point.h>

#include <vector>

class G1Points: Elements<G1Point> {
    public:
        G1Points(const std::vector<G1Point>& pVec): Elements<G1Point>(pVec) {}
};

#endif // NAVCOIN_BLSCT_ARITH_G1POINTS_H
