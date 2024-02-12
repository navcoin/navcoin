// Copyright (c) 2024 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "blsct/double_public_key.h"
#include "key_io.h"
#include <boost/function/function_base.hpp>
#include <sys/types.h>
#define BOOST_UNIT_TEST

#include <boost/test/unit_test.hpp>
#include <test/util/setup_common.h>
#include <blsct/external_api/blsct.h>

#include <cstring>
#include <string>

using T = Mcl;
using Point = T::Point;
using Scalar = T::Scalar;
using Points = Elements<Point>;
using Scalars = Elements<Scalar>;
using MsgPair = std::pair<std::string, std::vector<uint8_t>>;

BOOST_FIXTURE_TEST_SUITE(blsct_tests, BasicTestingSetup)

BOOST_AUTO_TEST_CASE(test_encode_decode_blsct_address)
{
    BOOST_CHECK(blsct_init(MainNet));

    // bech32_mod-encoded
    std::string blsct_addr_str = "nv1jlca8fe3jltegf54vwxyl2dvplpk3rz0ja6tjpdpfcar79cm43vxc40g8luh5xh0lva0qzkmytrthftje04fqnt8g6yq3j8t2z552ryhy8dnpyfgqyj58ypdptp43f32u28htwu0r37y9su6332jn0c0fcvan8l53m";

    uint8_t ser_dpk[blsct::DoublePublicKey::SIZE];
    {
        auto res = blsct_decode_address(
            blsct_addr_str.c_str(),
            ser_dpk
        );
        BOOST_CHECK(res == BLSCT_SUCCESS);
    }

    char rec_addr_buf[DOUBLE_PUBKEY_ENC_SIZE + 1];  // 1 for null-termination
    {
        auto res = blsct_encode_address(
            ser_dpk,
            rec_addr_buf,
            Bech32M
        );
        BOOST_CHECK(res == BLSCT_SUCCESS);
    }

    std::string rec_addr_str((char*) rec_addr_buf, DOUBLE_PUBKEY_ENC_SIZE);

    BOOST_CHECK(blsct_addr_str == rec_addr_str);
}

BOOST_AUTO_TEST_CASE(test_generate_token_id)
{
    BlsctUint256 token;
    blsct_uint64_to_blsct_uint256(100, token);

    BlsctTokenId blsct_token_id;
    blsct_generate_token_id(token, blsct_token_id, 200);

    TokenId token_id;
    CDataStream st(SER_DISK, PROTOCOL_VERSION);
    st << blsct_token_id;
    token_id.Unserialize(st);

    BOOST_CHECK(token_id.token == uint256(100));
    BOOST_CHECK(token_id.subid == 200);
}

BOOST_AUTO_TEST_CASE(test_prove_verify_range_proof)
{
    BOOST_CHECK(blsct_init(MainNet));

    uint8_t seed[1] = { 1 };
    BlsctPoint blsct_nonce;
    blsct_generate_nonce(seed, 1, &blsct_nonce);

    BlsctUint256 token;
    blsct_uint64_to_blsct_uint256(100, token);

    BlsctTokenId blsct_token_id;
    blsct_generate_token_id(token, blsct_token_id);

    const char* blsct_message = "spaghetti meatballs";

    uint64_t uint64_vs[1];
    uint64_vs[0] = 1;

    BlsctRangeProof blsct_range_proof;
    {
        auto res = blsct_build_range_proof(
            uint64_vs,
            1,
            blsct_nonce,
            blsct_message,
            std::strlen(blsct_message),
            blsct_token_id,
            blsct_range_proof
        );
        BOOST_CHECK(res == BLSCT_SUCCESS);
    }

    BlsctRangeProof blsct_range_proofs[1];
    std::memcpy(
        &blsct_range_proofs[0],
        blsct_range_proof,
        sizeof(blsct_range_proof)
    );
    {
        bool is_valid;
        uint8_t res = blsct_verify_range_proof(
            blsct_range_proofs, 1, &is_valid
        );
        BOOST_CHECK(is_valid);
        BOOST_CHECK(res == BLSCT_SUCCESS);
    }
}

BOOST_AUTO_TEST_CASE(test_generate_nonce)
{
    const size_t NUM_NONCES = 255;
    const size_t SEED_LEN = 1000;
    uint8_t seed[SEED_LEN];

    BlsctPoint ps[NUM_NONCES];
    for(uint8_t i=0; i<NUM_NONCES; ++i) {
        // generate seed
        for(size_t j=0; j<SEED_LEN; ++j) {
            seed[j] = i;
        }
        // generate nonce
        blsct_generate_nonce(
            seed,
            SEED_LEN,
            &ps[i]
        );
    }

    // check if all the generated nonces are unique
    for(size_t i=0; i<NUM_NONCES; ++i) {
        for(size_t j=0; j<NUM_NONCES; ++j) {
            // avoid comparing to itself
            if (i == j) continue;

            // make sure different seeds have different contents
            bool is_different = false;
            for(size_t k=0; k<SEED_LEN; ++k) {
                if (ps[i][k] != ps[j][k]) {
                    is_different = true;
                }
            }
            BOOST_CHECK(is_different);
        }
    }
}

static void build_range_proof_for_amount_recovery(
    const std::vector<uint64_t>& uint64_vs,
    const BlsctPoint& blsct_nonce,
    const char* msg,
    const BlsctTokenId& blsct_token_id,
    BlsctRangeProof& blsct_range_proof
) {
    auto res = blsct_build_range_proof(
        &uint64_vs[0],
        uint64_vs.size(),
        blsct_nonce,
        msg,
        std::strlen(msg),
        blsct_token_id,
        blsct_range_proof
    );
    BOOST_CHECK(res == BLSCT_SUCCESS);
}

BOOST_AUTO_TEST_CASE(test_amount_recovery)
{
    BOOST_CHECK(blsct_init(MainNet));

    BlsctAmountRecoveryRequest reqs[2];
    const char* msgs[] = { "apple", "orange" };
    std::vector<uint64_t> amounts = { 123, 456 };

    BlsctUint256 token;
    BlsctTokenId blsct_token_id;
    blsct_generate_token_id(token, blsct_token_id);

    for(size_t i=0; i<2; ++i) {
        std::vector<uint64_t> uint64_vs { amounts[i] };

        uint8_t seed[] = { (uint8_t) i };
        blsct_generate_nonce(seed, 1, &reqs[i].nonce);

        build_range_proof_for_amount_recovery(
            uint64_vs,
            reqs[i].nonce,
            msgs[i],
            blsct_token_id,
            reqs[i].range_proof
        );
    }

    auto res = blsct_recover_amount(reqs, 2);
    BOOST_CHECK(res == BLSCT_SUCCESS);

    for(size_t i=0; i<2; ++i) {
        BOOST_CHECK(reqs[i].is_succ);
        BOOST_CHECK(reqs[i].amount == amounts[i]);
        BOOST_CHECK(reqs[i].msg_size == std::strlen(msgs[i]));
        BOOST_CHECK(std::strcmp(reqs[i].msg, msgs[i]) == 0);
    }
}

BOOST_AUTO_TEST_SUITE_END()

