// Copyright (c) 2024 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "blsct/double_public_key.h"
#include "key_io.h"
#include <boost/function/function_base.hpp>
#define BOOST_UNIT_TEST

#include <boost/test/unit_test.hpp>
#include <test/util/setup_common.h>
#include <blsct/external_api/blsct.h>
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

BOOST_AUTO_TEST_CASE(test_prove_verify_range_proof)
{
    BOOST_CHECK(blsct_init(MainNet));

    auto nonce = GenNonce();
    auto token_id = GenTokenId();
    std::string message = "spaghetti meatballs";

    Scalar one(1);
    std::vector<Scalar> vs_vec;
    vs_vec.push_back(one);
    Scalars vs;
    vs.Add(one);

    // convert blsct_vs
    // need to create array of pointers to BlsctScalar
    BlsctScalar blsct_vs[vs.Size()];
    // IMPLEMENT ME!!

    // convert nonce
    BlsctPoint blsct_nonce;
    {
        auto ser = nonce.GetVch();
        std::memcpy(blsct_nonce, &ser[0], POINT_SIZE);
    }

    // convert message
    const uint8_t* blsct_message =
        reinterpret_cast<const uint8_t*>(message.c_str());

    // convert token_id
    BlsctTokenId blsct_token_id;

    BlsctRangeProof blsct_range_proof;

    // generate range proof
    blsct_build_range_proof(
        blsct_vs,
        vs.Size(),
        &blsct_nonce,
        blsct_message,
        message.size(),
        &blsct_token_id,
        &blsct_range_proof
    );

    // build BlsctRangeProof array of size 1
    BlsctRangeProof blsct_range_proofs[1];
    std::memcpy(
        &blsct_range_proofs[0],
        blsct_range_proof,
        sizeof(blsct_range_proof)
    );

    bool res = blsct_verify_range_proof(blsct_range_proofs, 1);
    printf("is proof valid? %s\n", res ? "yes" : "no");
}


BOOST_AUTO_TEST_SUITE_END()

