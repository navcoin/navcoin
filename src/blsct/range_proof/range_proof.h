// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_RANGE_PROOF_PROOF_H
#define NAVCOIN_BLSCT_RANGE_PROOF_PROOF_H

#include <blsct/arith/elements.h>

// using Sc instead of S to avoid name conflict
template <typename P, typename Sc>
struct RangeProof
{
    // intermediate values used to derive random values later
    Points<P> Vs;
    Point<P> A;
    Point<P> S;
    Point<P> T1;
    Point<P> T2;
    Scalar<Sc> mu;
    Scalar<Sc> tau_x;
    Points<P> Ls;
    Points<P> Rs;

    // proof results
    Scalar<Sc> t_hat;   // inner product of l and r
    Scalar<Sc> a;       // result of inner product argument
    Scalar<Sc> b;       // result of inner product argument
};

#endif // NAVCOIN_BLSCT_RANGE_PROOF_PROOF_H