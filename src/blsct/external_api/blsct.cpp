#include <blsct/arith/elements.h>
#include <blsct/arith/mcl/mcl.h>
#include <blsct/arith/mcl/mcl_init.h>
#include <blsct/bech32_mod.h>
#include <blsct/external_api/blsct.h>
#include <blsct/key_io.h>
#include <blsct/public_key.h>
#include <blsct/range_proof/bulletproofs/range_proof.h>
#include <blsct/range_proof/bulletproofs/range_proof_logic.h>
#include <blsct/range_proof/bulletproofs/amount_recovery_request.h>
#include <streams.h>

#include <cstdint>
#include <iostream>
#include <memory>
#include <mutex>
#include <optional>
#include <string>

static std::string g_chain;
static std::mutex g_init_mutex;
static bulletproofs::RangeProofLogic<Mcl>* g_rpl;
static bool g_is_little_endian;

extern "C" {

using Scalars = Elements<Mcl::Scalar>;

static bool is_little_endian() {
    uint16_t n = 1;
    uint8_t* p = (uint8_t*) &n;
    return *p == 1;
}

bool blsct_init(enum Chain chain)
{
    {
        std::lock_guard<std::mutex> lock(g_init_mutex);
        if (!g_chain.empty()) return true;

        MclInit for_side_effect_only;

        g_rpl = new bulletproofs::RangeProofLogic<Mcl>();
        g_is_little_endian = is_little_endian();

        switch (chain) {
            case MainNet:
                g_chain = blsct::bech32_hrp::Main;
                break;

            case TestNet:
                g_chain = blsct::bech32_hrp::TestNet;
                break;

            case SigNet:
                g_chain = blsct::bech32_hrp::SigNet;
                break;

            case RegTest:
                g_chain = blsct::bech32_hrp::RegTest;
                break;

            default:
                return false;
        }
        return true;
    }
}


uint8_t blsct_decode_address(
    const char* blsct_addr,
    uint8_t ser_dpk[DOUBLE_PUBLIC_KEY_SIZE]
) {
    try {
        std::string blsct_addr_str(blsct_addr);

        if (blsct_addr_str.size() != ENCODED_DPK_SIZE) return BLSCT_BAD_DPK_SIZE;
        auto maybe_dpk = blsct::DecodeDoublePublicKey(g_chain, blsct_addr_str);
        if (maybe_dpk) {
            auto dpk = maybe_dpk.value();
            if (dpk.IsValid()) {
                auto buf = dpk.GetVch();
                std::memcpy(ser_dpk, &buf[0], DOUBLE_PUBLIC_KEY_SIZE);
                return BLSCT_SUCCESS;
            }
        }
    } catch(...) {}

    return BLSCT_EXCEPTION;
}

uint8_t blsct_encode_address(
    const uint8_t ser_dpk[DOUBLE_PUBLIC_KEY_SIZE],
    char* blsct_addr,
    enum AddressEncoding encoding
) {
    try {
        if (encoding != Bech32 && encoding != Bech32M) {
            return BLSCT_UNKNOWN_ENCODING;
        }
        auto bech32_encoding = encoding == Bech32 ?
            bech32_mod::Encoding::BECH32 : bech32_mod::Encoding::BECH32M;

        std::vector<uint8_t> dpk_vec(ser_dpk, ser_dpk + blsct::DoublePublicKey::SIZE);
        auto dpk = blsct::DoublePublicKey(dpk_vec);

        auto dpk_str = blsct::EncodeDoublePublicKey(g_chain, bech32_encoding, dpk);
        std::memcpy(blsct_addr, dpk_str.c_str(), ENCODED_DPK_SIZE + 1);
        return BLSCT_SUCCESS;

    } catch(...) {}

    return BLSCT_EXCEPTION;
}

static void blsct_nonce_to_nonce(
    const BlsctPoint blsct_nonce,
    Mcl::Point& nonce
) {
    std::vector<uint8_t> ser_point(
        blsct_nonce, blsct_nonce + POINT_SIZE
    );
    nonce.SetVch(ser_point);
}

uint8_t blsct_build_range_proof(
    const uint64_t uint64_vs[],
    const size_t num_uint64_vs,
    const BlsctPoint blsct_nonce,
    const char* blsct_message,
    const size_t blsct_message_size,
    const BlsctTokenId blsct_token_id,
    BlsctRangeProof blsct_range_proof
) {
    try {
        // uint64_t to Scalar
        Scalars vs;
        for(size_t i=0; i<num_uint64_vs; ++i) {
            if (uint64_vs[i] > INT64_MAX) return BLSCT_VALUE_OUTSIDE_THE_RANGE;
            Mcl::Scalar x(static_cast<int64_t>(uint64_vs[i]));
            vs.Add(x);
        }

        // blsct_nonce to nonce
        Mcl::Point nonce;
        blsct_nonce_to_nonce(blsct_nonce, nonce);

        // blsct_message to message
        std::vector<uint8_t> message(
            blsct_message, blsct_message + blsct_message_size
        );

        // blsct_token_id to token_id
        TokenId token_id;
        {
            CDataStream st(SER_DISK, PROTOCOL_VERSION);
            std::vector<uint8_t> token_id_vec(
                *blsct_token_id, *blsct_token_id + TOKEN_ID_SIZE
            );
            st << token_id_vec;
            token_id.Unserialize(st);
        }

        // range_proof to blsct_range_proof
        auto range_proof = g_rpl->Prove(
            vs,
            nonce,
            message,
            token_id
        );
        {
            CDataStream st(SER_DISK, PROTOCOL_VERSION);
            range_proof.Serialize(st);
            std::memcpy(blsct_range_proof, st.data(), st.size());
        }
        return BLSCT_SUCCESS;

    } catch(...) {}

    return BLSCT_EXCEPTION;
}

static void blsct_range_proof_to_range_proof(
    const BlsctRangeProof& blsct_range_proof,
    bulletproofs::RangeProof<Mcl>& range_proof
) {
    CDataStream st(SER_DISK, PROTOCOL_VERSION);
    for(size_t i=0; i<PROOF_SIZE; ++i) {
        st << blsct_range_proof[i];
    }
    range_proof.Unserialize(st);
}

uint8_t blsct_verify_range_proof(
    const BlsctRangeProof blsct_range_proofs[],
    const size_t num_blsct_range_proofs,
    bool* is_valid
) {
    try {
        // convert blsct_proofs to proofs;
        std::vector<bulletproofs::RangeProof<Mcl>> range_proofs;

        for(size_t i=0; i<num_blsct_range_proofs; ++i) {
            bulletproofs::RangeProof<Mcl> range_proof;
            blsct_range_proof_to_range_proof(
                blsct_range_proofs[i],
                range_proof
            );
            range_proofs.push_back(range_proof);
        }
        *is_valid = g_rpl->Verify(range_proofs);

        return BLSCT_SUCCESS;

    } catch(...) {}

    return BLSCT_EXCEPTION;
}

void blsct_generate_nonce(
    const uint8_t seed[],
    const size_t seed_len,
    BlsctPoint* blsct_nonce
) {
    std::vector<uint8_t> seed_vec(&seed[0], &seed[0] + seed_len);
    auto nonce = Mcl::Point::HashAndMap(seed_vec);
    auto nonce_vec = nonce.GetVch();
    std::memcpy(blsct_nonce, &nonce_vec[0], nonce_vec.size());
}

void blsct_uint64_to_blsct_uint256(
    const uint64_t n,
    BlsctUint256 uint256
) {
    std::memset(uint256, 0, UINT256_SIZE);
    if (g_is_little_endian) {
        for (size_t i=0; i<8; ++i) {
            uint256[i] = (n >> (i * 8)) & 0xFF;
        }
    } else {
        for (size_t i=0; i<8; ++i) {
            uint256[7 - i] = (n >> (i * 8)) & 0xFF;
        }
    }
}

void blsct_generate_token_id(
    const BlsctUint256 token,
    BlsctTokenId blsct_token_id,
    const uint64_t subid
) {
    std::vector<uint8_t> token_vec(token, token + UINT256_SIZE);
    uint256 token_uint256(token_vec);
    TokenId token_id(token_uint256, subid);

    CDataStream st(SER_DISK, PROTOCOL_VERSION);
    token_id.Serialize(st);
    std::memcpy(blsct_token_id, st.data(), st.size());
}

uint8_t blsct_recover_amount(
    BlsctAmountRecoveryRequest blsct_amount_recovery_reqs[],
    const size_t num_reqs
) {
    try {
        // build AmountRecoveryRequest's
        std::vector<bulletproofs::AmountRecoveryRequest<Mcl>> reqs;

        for(size_t i=0; i<num_reqs; ++i) {
            auto& r = blsct_amount_recovery_reqs[i];

            Mcl::Point nonce;
            blsct_nonce_to_nonce(r.nonce, nonce);

            bulletproofs::RangeProof<Mcl> range_proof;
            blsct_range_proof_to_range_proof(
                r.range_proof,
                range_proof
            );

            auto req = bulletproofs::AmountRecoveryRequest<Mcl>::of(
                range_proof,
                nonce
            );
            reqs.push_back(req);
        }

        auto res = g_rpl->RecoverAmounts(reqs);

        // initially mark all the requests to be failure
        for(size_t i=0; i<num_reqs; ++i) {
            blsct_amount_recovery_reqs[i].is_succ = false;
        }

        if (!res.run_to_completion) {
            return BLSCT_DID_NOT_RUN_TO_COMPLETION;
        }
        // res contains results of successful recovery only
        // i.e. res.amounts.size() can be less than num_reqs
        for(size_t i=0; i<res.amounts.size(); ++i) {
            auto amount = res.amounts[i];
            auto& r = blsct_amount_recovery_reqs[amount.idx];
            r.is_succ = true;
            r.amount = amount.amount;
            r.msg_size = amount.message.size();
            std::memcpy(
                r.msg,
                amount.message.c_str(),
                amount.message.size()
            );
        }
        return BLSCT_SUCCESS;

    } catch(...) {}

    return BLSCT_EXCEPTION;
}

} // extern "C"

