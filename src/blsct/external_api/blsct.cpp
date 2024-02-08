#include <blsct/arith/elements.h>
#include <blsct/arith/mcl/mcl.h>
#include <blsct/arith/mcl/mcl_init.h>
#include <blsct/bech32_mod.h>
#include <blsct/external_api/blsct.h>
#include <blsct/key_io.h>
#include <blsct/public_key.h>
#include <blsct/range_proof/bulletproofs/range_proof.h>
#include <blsct/range_proof/bulletproofs/range_proof_logic.h>
#include <streams.h>

#include <iostream>
#include <memory>
#include <mutex>
#include <optional>
#include <string>

static std::string g_chain;
static std::mutex g_init_mutex;

extern "C" {

using Scalars = Elements<Mcl::Scalar>;

bool blsct_init(enum Chain chain)
{
    {
        std::lock_guard<std::mutex> lock(g_init_mutex);
        if (!g_chain.empty()) return true;

        MclInit for_side_effect_only;

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

bool blsct_decode_address(
    const char* blsct_addr,
    uint8_t ser_dpk[DOUBLE_PUBLIC_KEY_SIZE]
) {
    try {
        std::string blsct_addr_str(blsct_addr);

        if (blsct_addr_str.size() != ENCODED_DPK_SIZE) return false;
        auto maybe_dpk = blsct::DecodeDoublePublicKey(g_chain, blsct_addr_str);
        if (maybe_dpk) {
            auto dpk = maybe_dpk.value();
            if (dpk.IsValid()) {
                auto buf = dpk.GetVch();
                std::memcpy(ser_dpk, &buf[0], DOUBLE_PUBLIC_KEY_SIZE);
                return true;
            }
        }
    } catch(...) {}

    return false;
}

bool blsct_encode_address(
    const uint8_t ser_dpk[DOUBLE_PUBLIC_KEY_SIZE],
    char* blsct_addr,
    enum AddressEncoding encoding
) {
    try {
        if (encoding != Bech32 && encoding != Bech32M) {
            return false;
        }
        auto bech32_encoding = encoding == Bech32 ?
            bech32_mod::Encoding::BECH32 : bech32_mod::Encoding::BECH32M;

        std::vector<uint8_t> dpk_vec(ser_dpk, ser_dpk + blsct::DoublePublicKey::SIZE);
        auto dpk = blsct::DoublePublicKey(dpk_vec);

        auto dpk_str = blsct::EncodeDoublePublicKey(g_chain, bech32_encoding, dpk);
        std::memcpy(blsct_addr, dpk_str.c_str(), ENCODED_DPK_SIZE + 1);
        return true;

    } catch(...) {}

    return false;
}

void blsct_build_range_proof(
    const BlsctScalar blsct_vs[],
    const size_t num_blsct_vs,
    const BlsctPoint* blsct_nonce,
    const uint8_t* blsct_message,
    const size_t blsct_message_size,
    const BlsctTokenId* blsct_token_id,
    BlsctRangeProof* blsct_range_proof
) {
    // blsct_vs to vs
    Scalars vs;
    for (size_t i=0; i<num_blsct_vs; ++i) {
        BlsctScalar v;
        std::vector<uint8_t> ser_scalar(
            blsct_vs[i], blsct_vs[i] + sizeof(BlsctScalar)
        );
        Mcl::Scalar s;
        s.SetVch(ser_scalar);
        vs.Add(s);
    }

    // blsct_nonce to nonce
    Mcl::Point nonce;
    std::vector<uint8_t> ser_point(
        *blsct_nonce, *blsct_nonce + POINT_SIZE
    );
    nonce.SetVch(ser_point);

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
    bulletproofs::RangeProofLogic<Mcl> rpl;
    auto range_proof = rpl.Prove(
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
}

bool blsct_verify_range_proof(
    const BlsctRangeProof blsct_range_proofs[],
    const size_t num_blsct_range_proofs
) {
    // convert blsct_proofs to proofs;
    std::vector<bulletproofs::RangeProof<Mcl>> range_proofs;

    for(size_t i=0; i<num_blsct_range_proofs; ++i) {
        bulletproofs::RangeProof<Mcl> range_proof;
        CDataStream st(SER_DISK, PROTOCOL_VERSION);
        for(size_t j=0; j<PROOF_SIZE; ++j) {
            st << blsct_range_proofs[i][j];
        }
        range_proof.Unserialize(st);
        range_proofs.push_back(range_proof);
    }

    bulletproofs::RangeProofLogic<Mcl> rpl;
    return rpl.Verify(range_proofs);
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

} // extern "C"

