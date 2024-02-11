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
    auto decode_result = blsct_decode_address(
         blsct_addr_str.c_str(),
        ser_dpk
    );
    BOOST_CHECK(decode_result);

    char rec_addr_buf[DOUBLE_PUBKEY_ENC_SIZE + 1];  // 1 for null-termination
    auto encode_result = blsct_encode_address(
        ser_dpk,
        rec_addr_buf,
        Bech32M
    );
    BOOST_CHECK(encode_result);

    std::string rec_addr_str((char*) rec_addr_buf, DOUBLE_PUBKEY_ENC_SIZE);

    BOOST_CHECK(blsct_addr_str == rec_addr_str);
}

static Mcl::Point GenNonce()
{
    std::string nonce_str("nonce");
    Mcl::Point nonce = Mcl::Point::HashAndMap(std::vector<uint8_t> { nonce_str.begin(), nonce_str.end() });
    return nonce;
}

static TokenId GenTokenId()
{
    TokenId token_id(uint256(123));
    return token_id;
}

static MsgPair GenMsgPair(std::string s = "spaghetti meatballs")
{
    std::vector<unsigned char> message { s.begin(), s.end() };
    return std::pair(s, message);
}

static void TokenIdToBlsctTokenId(
    const TokenId& token_id,
    BlsctTokenId& blsct_token_id
) {
    CDataStream st(SER_DISK, PROTOCOL_VERSION);
    token_id.Serialize(st);
    std::memcpy(blsct_token_id, st.data(), st.size());
}

BOOST_AUTO_TEST_CASE(test_prove_verify_range_proof)
{
    BOOST_CHECK(blsct_init(MainNet));

    auto nonce = GenNonce();
    auto token_id = GenTokenId();
    std::string message = "spaghetti meatballs";

    uint64_t uint64_vs[1];
    uint64_vs[0] = 1;

    // convert blsct_nonce to nonce
    BlsctPoint blsct_nonce;
    {
        auto ser = nonce.GetVch();
        std::memcpy(blsct_nonce, &ser[0], POINT_SIZE);
    }

    // convert blsct_message to message
    const uint8_t* blsct_message =
        reinterpret_cast<const uint8_t*>(message.c_str());

    // convert blsct_token_id to token_id
    BlsctTokenId blsct_token_id;
    TokenIdToBlsctTokenId(token_id, blsct_token_id);

    // build BlsctRangeProof
    BlsctRangeProof blsct_range_proof;
    auto is_succ = blsct_build_range_proof(
        uint64_vs,
        1,
        &blsct_nonce,
        blsct_message,
        message.size(),
        &blsct_token_id,
        &blsct_range_proof
    );
    BOOST_CHECK(is_succ);

    // build BlsctRangeProof array of size 1
    BlsctRangeProof blsct_range_proofs[1];
    std::memcpy(
        &blsct_range_proofs[0],
        blsct_range_proof,
        sizeof(blsct_range_proof)
    );

    bool res = blsct_verify_range_proof(blsct_range_proofs, 1);
    BOOST_CHECK(res);
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
    const std::vector<uint64_t> uint64_vs,
    const BlsctPoint& blsct_nonce,
    const std::string& msg,
    const TokenId& token_id,
    BlsctRangeProof& blsct_range_proof
) {
    BlsctTokenId blsct_token_id;
    TokenIdToBlsctTokenId(token_id, blsct_token_id);

    bool is_succ = blsct_build_range_proof(
        &uint64_vs[0],
        uint64_vs.size(),
        &blsct_nonce,
        reinterpret_cast<const uint8_t*>(msg.c_str()),
        msg.size(),
        &blsct_token_id,
        &blsct_range_proof
    );
    BOOST_CHECK(is_succ);
}

BOOST_AUTO_TEST_CASE(test_amount_recovery)
{
    BOOST_CHECK(blsct_init(MainNet));

    BlsctAmountRecoveryRequest reqs[2];
    std::vector<std::string> msgs = { "apple", "orange" };
    std::vector<uint64_t> amounts = { 123, 456 };
    TokenId token_id(uint256(123));
    Mcl::Point nonce(uint256(123));

    {
        std::vector<uint64_t> uint64_vs { amounts[0] };
        std::memcpy(&reqs[0].nonce, &nonce.GetVch()[0], POINT_SIZE);
        build_range_proof_for_amount_recovery(
            uint64_vs,
            reqs[0].nonce,
            msgs[0],
            token_id,
            reqs[0].range_proof
        );
    }
    {
        std::vector<uint64_t> uint64_vs { amounts[1] };
        std::memcpy(&reqs[1].nonce, &nonce.GetVch()[0], POINT_SIZE);
        build_range_proof_for_amount_recovery(
            uint64_vs,
            reqs[1].nonce,
            msgs[1],
            token_id,
            reqs[1].range_proof
        );
    }

    bool is_succ = blsct_recover_amount(reqs, 2);
    BOOST_CHECK(is_succ);

    for(size_t i=0; i<msgs.size(); ++i) {
        BOOST_CHECK(reqs[i].is_succ);
        BOOST_CHECK(reqs[i].amount == amounts[i]);
        BOOST_CHECK(reqs[i].msg_size == msgs[i].size());
        BOOST_CHECK(std::strcmp(reqs[i].msg, msgs[i].c_str()) == 0);
    }
}

BOOST_AUTO_TEST_SUITE_END()

