// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_RANGE_PROOF_PROOF_H
#define NAVCOIN_BLSCT_RANGE_PROOF_PROOF_H

#include <blsct/arith/elements.h>

template <typename P, typename V>
struct RangeProof
{
    // intermediate values used to derive random values later
    Points Vs;
    Point<P> A;
    Point<P> S;
    Point<P> T1;
    Point<P> T2;
    Scalar<V> mu;
    Scalar<V> tau_x;
    Points Ls;
    Points Rs;

    // proof results
    Scalar<V> t_hat;   // inner product of l and r
    Scalar<V> a;       // result of inner product argument
    Scalar<V> b;       // result of inner product argument
};

#endif // NAVCOIN_BLSCT_RANGE_PROOF_PROOF_H