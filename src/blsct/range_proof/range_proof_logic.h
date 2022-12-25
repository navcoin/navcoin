// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_RANGE_PROOF_RANGE_PROOF_H
#define NAVCOIN_BLSCT_ARITH_RANGE_PROOF_RANGE_PROOF_H

#include <optional>
#include <vector>

#include <blsct/arith/elements.h>
#include <blsct/arith/point.h>
#include <blsct/arith/scalar.h>
#include <blsct/range_proof/generators.h>
#include <blsct/range_proof/range_proof_with_transcript.h>
#include <consensus/amount.h>
#include <ctokens/tokenid.h>
#include <hash.h>

template <typename P, typename S>
struct AmountRecoveryRequest
{
    size_t id;
    S x;
    S z;
    Points<P> Vs;
    Points<P> Ls;
    Points<P> Rs;
    S mu;
    S tau_x;
    P nonce;

    static AmountRecoveryRequest<P,S> of(RangeProof<P,S>& proof, size_t& index, P& nonce);
};

template <typename S>
struct RecoveredAmount
{
    RecoveredAmount(
        const size_t& id,
        const CAmount& amount,
        const S& gamma,
        const std::string& message
    ): id{id}, amount{amount}, gamma{gamma}, message{message} {}

    size_t id;
    CAmount amount;
    S gamma;
    std::string message;
};

template <typename P, typename S>
struct AmountRecoveryResult
{
    bool is_completed;  // done doesn't mean recovery success
    std::vector<RecoveredAmount<S>> amounts;

    static AmountRecoveryResult<P,S> failure();
};

// implementation of range proof algorithms described
// based on the paper: https://eprint.iacr.org/2017/1066.pdf
template <typename P, typename S, typename I>
class RangeProofLogic
{
public:
    RangeProofLogic();

    RangeProof<P,S> Prove(
        Scalars<S>& vs,
        P& nonce,
        const std::vector<uint8_t>& message,
        const TokenId& token_id
    ) const;

    bool Verify(
        const std::vector<RangeProof<P,S>>& proofs,
        const TokenId& token_id
    ) const;

    P VerifyProofs(
        const std::vector<RangeProofWithTranscript<P,S>>& proof_transcripts,
        const Generators<P>& gens,
        const size_t& max_mn
    ) const;

    AmountRecoveryResult<P,S> RecoverAmounts(
        const std::vector<AmountRecoveryRequest<P,S>>& reqs,
        const TokenId& token_id
    ) const;

    static void ValidateProofsBySizes(
        const std::vector<RangeProof<P,S>>& proofs
    );

private:
    S GetUint64Max() const;

    P GenerateBaseG1PointH(
        const P& p,
        size_t index,
        TokenId token_id
    ) const;

    bool InnerProductArgument(
        const size_t concat_input_values_in_bits,
        Points<P>& Gi,
        Points<P>& Hi,
        const P& u,
        const S& cx_factor,  // factor to multiply to cL and cR
        Scalars<S>& a,
        Scalars<S>& b,
        const S& y,
        RangeProof<P,S>& proof,
        CHashWriter& transcript_gen
    ) const;

    // using pointers for Scalar and GeneratorsFactory to avoid default constructors to be called before mcl initialization
    // these variables are meant to be constant. do not make changes after initialization.
    static GeneratorsFactory<P,I>* m_gf;

    static S* m_one;
    static S* m_two;
    static Scalars<S>* m_two_pows_64;
    static S* m_inner_prod_1x2_pows_64;
    static S* m_uint64_max;

    inline static boost::mutex m_init_mutex;
    inline static bool m_is_initialized = false;
};

#endif // NAVCOIN_BLSCT_ARITH_RANGE_PROOF_RANGE_PROOF_H
