// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_UTIL_H
#define NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_UTIL_H

#include <blsct/arith/secp256k1/secp256k1_point.h>
#include <blsct/arith/secp256k1/secp256k1_scalar.h>
#include <blsct/building_block/lazy_point.h>
#include <vector>

struct Secp256k1Util {
    // using template to avoid circular dependency problem with Secp256k1 class
    template <typename T>
    static Secp256k1Point MultiplyLazyPoints(const std::vector<LazyPoint<T>>& points)
    {
        Secp256k1Point ret;
        return ret;
    }
};

#endif // NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_UTIL_H
