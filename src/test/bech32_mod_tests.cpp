// Copyright (c) 2017 Pieter Wuille
// Copyright (c) 2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <bech32_mod.h>
#include <boost/test/unit_test_suite.hpp>
#include <test/util/str.h>

#include <boost/test/unit_test.hpp>

#include <random>
#include <set>
#include <string>
#include <sstream>

/** The Bech32 and Bech32m character set for encoding. */
const char* CHARSET = "qpzry9x8gf2tvdw0s3jn54khce6mua7l";

/** The Bech32 and Bech32m character set for decoding. */
const int8_t CHARSET_REV[128] = {
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    15, -1, 10, 17, 21, 20, 26, 30,  7,  5, -1, -1, -1, -1, -1, -1,
    -1, 29, -1, 24, 13, 25,  9,  8, 23, -1, 18, 22, 31, 27, 19, -1,
     1,  0,  3, 16, 11, 28, 12, 14,  6,  4,  2, -1, -1, -1, -1, -1,
    -1, 29, -1, 24, 13, 25,  9,  8, 23, -1, 18, 22, 31, 27, 19, -1,
     1,  0,  3, 16, 11, 28, 12, 14,  6,  4,  2, -1, -1, -1, -1, -1
};
BOOST_AUTO_TEST_SUITE(bech32_mod_tests)

// randomly embed errors to the given string
void embed_errors(std::string& s, const size_t num_errors) {
    // build a list of indices to change
    std::random_device rd;
    std::mt19937 gen(rd());

    // randonly select indices to change
    std::set<size_t> indices;

    auto sep_idx = s.rfind("1");
    while (indices.size() < num_errors) {
        std::uniform_int_distribution<size_t> dist(sep_idx + 1, s.size() - 9);
        indices.insert(dist(gen));
    }

    // change characters at the indices
    for (auto it = indices.begin(); it != indices.end(); ++it) {
        auto from_idx = CHARSET_REV[static_cast<size_t>(s[*it])];
        auto to_idx = (from_idx + 1) % 32;
        s[*it] = CHARSET[to_idx];
    }
}

std::string gen_random_str(const size_t size) {
    static const char charset[] =
        "0123456789"
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        "abcdefghijklmnopqrstuvwxyz";
    const size_t max_index = (sizeof(charset) - 1);
    std::string s;

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<size_t> dist(0, max_index);

    for (size_t i = 0; i < size; ++i) {
        s += charset[dist(gen)];
    }
    return s;
}

size_t test_error_detection(
    const size_t num_errors,
    const size_t num_tests,
    const bool expect_errors
) {
    std::string hrp = "nv";
    size_t unexpected_results = 0;

    for (size_t i=0; i<num_tests; ++i) {
        // generate random 96-byte double public key
        std::string dpk = gen_random_str(96);

        // convert 8-bit vector to 5-bit vector
        std::vector<uint8_t> dpk_v8(dpk.begin(), dpk.end());
        auto dpk_v5 = bech32_mod::Vec8ToVec5(dpk_v8);

        auto dpk_bech32 = bech32_mod::Encode(bech32_mod::Encoding::BECH32, hrp, dpk_v5);
        embed_errors(dpk_bech32, num_errors);

        auto decode_result = bech32_mod::Decode(dpk_bech32);
        auto recovered_dpk_v8 = bech32_mod::Vec5ToVec8(decode_result.data);

        if (expect_errors) {
            if (recovered_dpk_v8 == dpk_v8) ++unexpected_results;
        } else {
            if (recovered_dpk_v8 != dpk_v8) ++unexpected_results;
        }
    }
    return unexpected_results;
}

BOOST_AUTO_TEST_CASE(bech32_mod_test_detecting_errors)
{
    bool failed = false;

    for (size_t num_errors = 0; num_errors <= 5; ++num_errors) {
        printf("trying %lu error case...\n", num_errors);
        size_t unexpected_results =
            test_error_detection(num_errors, 10000, num_errors > 0);

        if (unexpected_results > 0) {
            std::ostringstream msg;
            msg << num_errors << "-error cases failed " << unexpected_results << " times";
            printf("%s\n", msg.str().c_str());
            failed = true;
        }
    }
    BOOST_CHECK(!failed);
}

bool TestVecRecovery(const std::vector<uint8_t>& data_v8)
{
    auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);
    auto data_v8r = bech32_mod::Vec5ToVec8(data_v5);
    return data_v8 == data_v8r;
}

std::vector<uint8_t> GenTestVec8Vec(const size_t& size)
{
    uint8_t x = 0b1;
    std::vector<uint8_t> xs;
    xs.reserve(size);

    for (size_t i=0; i<size; ++i) {
        xs.push_back(x);
        x <<= 1;
        if (x == 0) x = 0b1;
    }
    return xs;
}

BOOST_AUTO_TEST_CASE(bech32_mod_test_vec_recovery)
{
    for (size_t i=1; i<=165; ++i) {
        auto data_v8 = GenTestVec8Vec(i);
        BOOST_CHECK(TestVecRecovery(data_v8));
    }
}

BOOST_AUTO_TEST_CASE(bech32_mod_test_vec8_to_vec5)
{
    {
        // 1 byte case
        std::vector<uint8_t> data_v8 {0b1111'1111};
        auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);
        //  1111 1111
        //  111 11111
        BOOST_CHECK(data_v5.size() == 2);
        BOOST_CHECK(data_v5[0] == 0b11111);
        BOOST_CHECK(data_v5[1] == 0b00111);
    }
    {
        // 2 byte case
        std::vector<uint8_t> data_v8 {0b1010'0101, 0b1011'1001};
        auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);
        //  1011 1001 1010 0101
        //  1 01110 01101 00101
        BOOST_CHECK(data_v5.size() == 4);
        BOOST_CHECK(data_v5[0] == 0b00101);
        BOOST_CHECK(data_v5[1] == 0b01101);
        BOOST_CHECK(data_v5[2] == 0b01110);
        BOOST_CHECK(data_v5[3] == 0b00001);
    }
    {
        // 3 byte case
        std::vector<uint8_t> data_v8 {0b1010'0101, 0b1011'1001, 0b1100'1101};
        auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);
        // 1100 1101 1011 1001 1010 0101
        // 1100 11011 01110 01101 00101
        BOOST_CHECK(data_v5.size() == 5);
        BOOST_CHECK(data_v5[0] == 0b00101);
        BOOST_CHECK(data_v5[1] == 0b01101);
        BOOST_CHECK(data_v5[2] == 0b01110);
        BOOST_CHECK(data_v5[3] == 0b11011);
        BOOST_CHECK(data_v5[4] == 0b01100);
    }
    {
        // 4 byte case
        std::vector<uint8_t> data_v8 {0b1010'0101, 0b1011'1001, 0b1100'1101, 0b1110'1110};
        auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);
        // 1110 1110 1100 1101 1011 1001 1010 0101
        // 11 10111 01100 11011 01110 01101 00101
        BOOST_CHECK(data_v5.size() == 7);
        BOOST_CHECK(data_v5[0] == 0b00101);
        BOOST_CHECK(data_v5[1] == 0b01101);
        BOOST_CHECK(data_v5[2] == 0b01110);
        BOOST_CHECK(data_v5[3] == 0b11011);
        BOOST_CHECK(data_v5[4] == 0b01100);
        BOOST_CHECK(data_v5[5] == 0b10111);
        BOOST_CHECK(data_v5[6] == 0b00011);
    }
    {
        // 5 byte case
        std::vector<uint8_t> data_v8 {0b1010'0101, 0b1011'1001, 0b1100'1101, 0b1110'1110, 0b1001'1110};
        auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);
        // 1001 1110 1110 1110 1100 1101 1011 1001 1010 0101
        // 10011 11011 10111 01100 11011 01110 01101 00101
        BOOST_CHECK(data_v5[0] == 0b00101);
        BOOST_CHECK(data_v5[1] == 0b01101);
        BOOST_CHECK(data_v5[2] == 0b01110);
        BOOST_CHECK(data_v5[3] == 0b11011);
        BOOST_CHECK(data_v5[4] == 0b01100);
        BOOST_CHECK(data_v5[5] == 0b10111);
        BOOST_CHECK(data_v5[6] == 0b11011);
        BOOST_CHECK(data_v5[7] == 0b10011);
        BOOST_CHECK(data_v5.size() == 8);
    }
}

BOOST_AUTO_TEST_CASE(bech32_mod_test_vec5_to_vec8)
{
    {
        // 1 byte case
        std::vector<uint8_t> data_v5 {0b11111, 0b00111};
        auto data_v8 = bech32_mod::Vec5ToVec8(data_v5);
        //  111 11111
        //  1111 1111
        BOOST_CHECK(data_v8.size() == 1);
        BOOST_CHECK(data_v8[0] == 0b1111'1111);
    }
    {
        // 2 byte case
        std::vector<uint8_t> data_v5 {0b00101, 0b01101, 0b01110, 0b00001};
        auto data_v8 = bech32_mod::Vec5ToVec8(data_v5);
        //  1 01110 01101 00101
        //  1011 1001 1010 0101
        BOOST_CHECK(data_v8.size() == 2);
        BOOST_CHECK(data_v8[0] == 0b1010'0101);
        BOOST_CHECK(data_v8[1] == 0b1011'1001);
    }
    {
        // 3 byte case
        std::vector<uint8_t> data_v5 {
            0b00101,
            0b01101,
            0b01110,
            0b11011,
            0b01100,
        };
        auto data_v8 = bech32_mod::Vec5ToVec8(data_v5);
        // 1100 11011 01110 01101 00101
        // 1100 1101 1011 1001 1010 0101
        BOOST_CHECK(data_v8.size() == 3);
        BOOST_CHECK(data_v8[0] == 0b1010'0101);
        BOOST_CHECK(data_v8[1] == 0b1011'1001);
        BOOST_CHECK(data_v8[2] == 0b1100'1101);
    }
    {
        // 4 byte case
        std::vector<uint8_t> data_v5 {
            0b00101,
            0b01101,
            0b01110,
            0b11011,
            0b01100,
            0b10111,
            0b00011,
        };
        auto data_v8 = bech32_mod::Vec5ToVec8(data_v5);
        // 11 10111 01100 11011 01110 01101 00101
        // 1110 1110 1100 1101 1011 1001 1010 0101
        BOOST_CHECK(data_v8.size() == 4);
        BOOST_CHECK(data_v8[0] == 0b1010'0101);
        BOOST_CHECK(data_v8[1] == 0b1011'1001);
        BOOST_CHECK(data_v8[2] == 0b1100'1101);
        BOOST_CHECK(data_v8[3] == 0b1110'1110);
    }
    {
        // 5 byte case
        std::vector<uint8_t> data_v5 {
            0b00101,
            0b01101,
            0b01110,
            0b11011,
            0b01100,
            0b10111,
            0b11011,
            0b10011,
        };
        auto data_v8 = bech32_mod::Vec5ToVec8(data_v5);
        // 10011 11011 10111 01100 11011 01110 01101 00101
        // 1001 1110 1110 1110 1100 1101 1011 1001 1010 0101
        BOOST_CHECK(data_v8.size() == 5);
        BOOST_CHECK(data_v8[0] == 0b1010'0101);
        BOOST_CHECK(data_v8[1] == 0b1011'1001);
        BOOST_CHECK(data_v8[2] == 0b1100'1101);
        BOOST_CHECK(data_v8[3] == 0b1110'1110);
        BOOST_CHECK(data_v8[4] == 0b1001'1110);
    }
}

BOOST_AUTO_TEST_SUITE_END()
