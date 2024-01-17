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

BOOST_FIXTURE_TEST_SUITE(blsct_external_api_tests, BasicTestingSetup)

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

BOOST_AUTO_TEST_SUITE_END()

