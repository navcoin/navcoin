// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_SCALARS_H
#define NAVCOIN_BLSCT_ARITH_SCALARS_H

#include <blsct/arith/scalar.h>

#include <vector>

class Scalars {
    public:
        Scalars(const std::vector<Scalar>& sVec);
        Scalar Sum() const;

        Scalars operator*(const Scalars& other) const;
        bool operator==(const Scalars& other) const;
        bool operator!=(const Scalars& other) const;

        std::vector<Scalar> sVec;
};

#endif // NAVCOIN_BLSCT_ARITH_SCALARS_H
