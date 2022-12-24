// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H
#define NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H

#include <blsct/arith/elements.h>

template <typename P, typename Sc>
struct RangeProof
{
    // intermediate values used to derive random values later
    Points<P> Vs;
    P A;
    P S;
    P T1;
    P T2;
    Sc mu;
    Sc tau_x;
    Points<P> Ls;
    Points<P> Rs;

    // proof results
    Sc t_hat;   // inner product of l and r
    Sc a;       // result of inner product argument
    Sc b;       // result of inner product argument
};

#endif // NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H
