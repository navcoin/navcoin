// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_H
#define NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_H

#include <blsct/arith/secp256k1/secp256k1_point.h>
#include <blsct/arith/secp256k1/secp256k1_scalar.h>

struct Secp256k1 {
    using Scalar = Secp256k1Scalar;
    using Point = Secp256k1Point;
};

#endif // NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_H
