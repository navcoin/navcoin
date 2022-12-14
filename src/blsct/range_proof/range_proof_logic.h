// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H
#define NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H

#include <optional>
#include <vector>

#include <blsct/range_proof/generators.h>
#include <blsct/range_proof/range_proof_with_transcript.h>
#include <consensus/amount.h>
#include <ctokens/tokenid.h>

template <typename P, typename V>
struct AmountRecoveryRequest
{
    size_t id;
    Scalar<V> x;
    Scalar<V> z;
    Points Vs;
    Points Ls;
    Points Rs;
    Scalar<V> mu;
    Scalar<V> tau_x;
    Point<P> nonce;

    static AmountRecoveryRequest of(RangeProof& proof, size_t& index, G1Point& nonce);
};

template <typename V>
struct RecoveredAmount
{
    RecoveredAmount(
        const size_t& id,
        const CAmount& amount,
        const Scalar<V>& gamma,
        const std::string& message
    ): id{id}, amount{amount}, gamma{gamma}, message{message} {}

    size_t id;
    CAmount amount;
    Scalar<V> gamma;
    std::string message;
};

struct AmountRecoveryResult
{
    bool is_completed;  // done doesn't mean recovery success
    std::vector<RecoveredAmount> amounts;

    static AmountRecoveryResult failure();
};

// implementation of range proof algorithms described
// based on the paper: https://eprint.iacr.org/2017/1066.pdf
template <typename P, typename V>
class RangeProofLogic
{
public:
    RangeProofLogic<P,V>();

    RangeProof<P,V> Prove(
        Scalars& vs,
        Point<P>& nonce,
        const std::vector<uint8_t>& message,
        const TokenId& token_id
    );

    bool Verify(
        const std::vector<RangeProof<P,V>>& proofs,
        const TokenId& token_id
    ) const;

    G1Point VerifyProofs(
        const std::vector<RangeProofWithTranscript<P,V>>& proof_transcripts,
        const Generators<P>& gens,
        const size_t& max_mn
    ) const;

    AmountRecoveryResult RecoverAmounts(
        const std::vector<AmountRecoveryRequest<P,V>>& reqs,
        const TokenId& token_id
    ) const;

    static void ValidateProofsBySizes(
        const std::vector<RangeProof<P,V>>& proofs
    );

private:
    Scalar<V> GetUint64Max() const;

    Point<P> GenerateBaseG1PointH(
        const Point<P>& p,
        size_t index,
        TokenId token_id
    ) const;

    bool InnerProductArgument(
        const size_t input_value_vec_len,
        Points& Gi,
        Points& Hi,
        const G1Point<P>& u,
        const Scalar<V>& cx_factor,  // factor to multiply to cL and cR
        Scalars& a,
        Scalars& b,
        const Scalar<V>& y,
        RangeProof<P,V>& proof,
        CHashWriter& transcript_gen
    );

    // using pointers for Scalar and GeneratorsFactory to avoid default constructors to be called before mcl initialization
    // these variables are meant to be constant. do not make changes after initialization.
    static GeneratorsFactory<P>* m_gf;
    static Scalar<V>* m_one;
    static Scalar<V>* m_two;
    static Scalars* m_two_pows_64;
    static Scalar<V>* m_inner_prod_1x2_pows_64;
    static Scalar<V>* m_uint64_max;

    inline static boost::mutex m_init_mutex;
    inline static bool m_is_initialized = false;
};

#endif // NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H