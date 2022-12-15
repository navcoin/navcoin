// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_RANGE_PROOF_PROOF_WITH_TRANSCRIPT_H
#define NAVCOIN_BLSCT_RANGE_PROOF_PROOF_WITH_TRANSCRIPT_H

#include <blsct/arith/elements.h>
#include <blsct/range_proof/range_proof.h>

template <typename P, typename S>
class RangeProofWithTranscript
{
public:
    RangeProofWithTranscript(
        const RangeProof<P,S>& proof,
        const Scalar<S>& x,
        const Scalar<S>& y,
        const Scalar<S>& z,
        const Scalar<S>& cx_factor,
        const Scalars<S>& xs,
        const Scalars<S>& inv_xs,
        const size_t& num_input_values_power_2,
        const size_t& concat_input_values_in_bits
    ): proof{proof}, x{x}, y{y}, z{z}, cx_factor{cx_factor}, xs(xs),
        inv_xs{inv_xs}, inv_y(y.Invert()),
        num_input_values_power_2(num_input_values_power_2),
        concat_input_values_in_bits(concat_input_values_in_bits) {}

    static RangeProofWithTranscript<P,S> Build(const RangeProof<P,S>& proof);

    static size_t RecoverNumRounds(const size_t& num_input_values);

    const RangeProof<P,S> proof;

    // transcript
    const Scalar<S> x;  // x used in the main prove procedure
    const Scalar<S> y;
    const Scalar<S> z;
    const Scalar<S> cx_factor;  // factor multiplied to cL and cR in inner product argument
    const Scalars<S> xs;      // x used in inner product argument
    const Scalars<S> inv_xs;  // x^-1 used in inner product argument
    const Scalar<S> inv_y;

    const size_t num_input_values_power_2;  // M in old impl
    const size_t concat_input_values_in_bits;  // MN is old impl
};

#endif // NAVCOIN_BLSCT_RANGE_PROOF_PROOF_WITH_TRANSCRIPT_H
