// Copyright (c) 2017 Pieter Wuille
// Copyright (c) 2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <bech32_mod.h>
#include <test/util/str.h>

#include <boost/test/unit_test.hpp>

#include <string>
#include <random>

std::string gen_random_str(size_t len) {
    static const char charset[] =
        "0123456789"
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        "abcdefghijklmnopqrstuvwxyz";
    const size_t max_index = (sizeof(charset) - 1);
    std::string s;
    
    std::random_device rd;
    std::mt19937 gen(rd());

    std::uniform_int_distribution<size_t> dist(0, max_index);

    for (size_t i = 0; i < len; ++i) {
        s += charset[dist(gen)];
    }

    return s;
}

BOOST_AUTO_TEST_SUITE(bech32_mod_tests)

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

/*
BOOST_AUTO_TEST_CASE(bech32_mod_no_error)
{
    std::string hrp = "navcoin";
    std::string s = "navcoin bech32";

    std::vector<uint8_t> data_v8(s.begin(), s.end());
    auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);

    auto bech32_str = bech32_mod::Encode(bech32_mod::Encoding::BECH32, hrp, data_v5);

    auto res = bech32_mod::Decode(bech32_str);
    auto data_v8r = bech32_mod::Vec5ToVec8(res.data);

    BOOST_CHECK(data_v8r == data_v8);
}

BOOST_AUTO_TEST_CASE(bech32_mod_locating_one_error)
{
    std::string hrp = "navcoin";
    std::string s = "navcoin bech32";
    std::vector<uint8_t> data_v8(s.begin(), s.end());
    auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);

    // navcoin1wtcvh3ad0t6uxsgvztexx5dxn3vq6qxyax
    auto good_bech32_str = bech32_mod::Encode(bech32_mod::Encoding::BECH32, hrp, data_v5);

    auto sep_index = good_bech32_str.find('1');

    for (size_t i=sep_index + 1; i<good_bech32_str.size(); ++i) {
        auto bad_bech32_str = good_bech32_str;
        // change 1 character in good_bech32_str
        bad_bech32_str[i] = CHARSET[CHARSET_REV[bad_bech32_str[i]] + 1 % 32];

        auto errors = bech32_mod::LocateErrors(bad_bech32_str).second;
        BOOST_CHECK(errors.size() == 1);  // should contain 1 error
        BOOST_CHECK(errors[0] == i);  // the error should be at index i
    }
}

BOOST_AUTO_TEST_CASE(bech32_mod_locating_two_errors)
{
    std::string hrp = "navcoin";
    std::string s = "navcoin bech32";
    std::vector<uint8_t> data_v8(s.begin(), s.end());
    auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);

    // navcoin1wtcvh3ad0t6uxsgvztexx5dxn3vq6qxyax
    auto good_bech32_str = bech32_mod::Encode(bech32_mod::Encoding::BECH32, hrp, data_v5);

    auto sep_index = good_bech32_str.find('1');

    for (size_t i=sep_index + 1; i<good_bech32_str.size() - 1; ++i) {
        for (size_t j=i + 1; j<good_bech32_str.size(); ++j) {
            auto bad_bech32_str = good_bech32_str;
            // change 2 characters in good_bech32_str
            bad_bech32_str[i] = CHARSET[CHARSET_REV[bad_bech32_str[i]] + 1 % 32];
            bad_bech32_str[j] = CHARSET[CHARSET_REV[bad_bech32_str[j]] + 1 % 32];

            auto errors = bech32_mod::LocateErrors(bad_bech32_str).second;
            BOOST_CHECK(errors.size() == 2);  // should contain 2 errors
            BOOST_CHECK(errors[0] == i);  // the first error should be at index i
            BOOST_CHECK(errors[1] == j);  // the second error should be at index j
        }
    }
}
*/

/*
BOOST_AUTO_TEST_CASE(bech32_mod_enc_dec_verious_length_data)
{
    std::string hrp = "navcoin";

    for (size_t len=10; len<97; ++len) {
        auto s = gen_random_str(len);

        std::vector<uint8_t> v8(s.begin(), s.end());
        auto v5 = bech32_mod::Vec8ToVec5(v8);

        auto enc = bech32_mod::Encode(bech32_mod::Encoding::BECH32, hrp, v5);
        const auto dec = bech32_mod::Decode(enc);

        auto v8r = bech32_mod::Vec5ToVec8(dec.data);

        std::string s2(v8r.begin(), v8r.end());
        auto is_equal = v8 == v8r;

        printf("%lu: %s\n", len, is_equal ? "Yes" : "No");
    }
}
*/

BOOST_AUTO_TEST_CASE(bech32_mod_locate_error_verious_length_data)
{
    std::string hrp = "navcoin";

    for (size_t len=10; len<=100; ++len) {
        printf("len: %lu\n", len);
        auto s = gen_random_str(len);
        printf("s: %s\n", s.c_str());

        std::vector<uint8_t> v8(s.begin(), s.end());
        auto v5 = bech32_mod::Vec8ToVec5(v8);
        printf("v5: %lu\n", v5.size());
        auto good_enc = bech32_mod::Encode(bech32_mod::Encoding::BECH32, hrp, v5);
        printf("all-enc: %s\n", good_enc.c_str());
        auto sep_index = good_enc.find('1');

        auto dec = bech32_mod::Decode(good_enc);
        std::string dec_str(dec.data.begin(), dec.data.end()); 
        printf("enc == dec: %s\n", v5 == dec.data ? "Y" : "N");


        for (size_t i=sep_index+1; i<good_enc.size()-1; ++i) {
            for (size_t j=i+1; j<good_enc.size(); ++j) {
                std::string bad_enc = good_enc;

                // build a bad_enc by changing 2 chars in good_enc
                bad_enc[i] = CHARSET[CHARSET_REV[bad_enc[i]] + 1 % 32];
                bad_enc[j] = CHARSET[CHARSET_REV[bad_enc[j]] + 1 % 32];

                auto res = bech32_mod::LocateErrors(bad_enc);
                printf("%lu: %lu, %lu: %d, %d (%s)\n", len, i, j, res.second[0], res.second[1], res.first.c_str());
                break;
            }
            break;
        }
    }
}

/*
BOOST_AUTO_TEST_CASE(bech32_mod_vec8_vec5_conversion)
{
    std::string s1 = "navcoin bech32 mod test";
    std::vector<uint8_t> v8(s1.begin(), s1.end());

    auto v5 = bech32_mod::Vec8ToVec5(v8);
    auto v8r = bech32_mod::Vec5ToVec8(v5);

    std::string s2(v8r.begin(), v8r.end());
    BOOST_CHECK_EQUAL(s1, s2);
}
*/

/*
BOOST_AUTO_TEST_CASE(bech32_mod_testvectors_valid)
{
    static const std::string CASES[] = {
        "A12UEL5L",
        "a12uel5l",
        "an83characterlonghumanreadablepartthatcontainsthenumber1andtheexcludedcharactersbio1tt5tgs",
        "abcdef1qpzry9x8gf2tvdw0s3jn54khce6mua7lmqqqxw",
        "11qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqc8247j",
        "split1checkupstagehandshakeupstreamerranterredcaperred2y9e3w",
        "?1ezyfcl",
    };
    for (const std::string& str : CASES) {
        const auto dec = bech32_mod::Decode(str);
        BOOST_CHECK(dec.encoding == bech32_mod::Encoding::BECH32);
        std::string recode = bech32_mod::Encode(bech32_mod::Encoding::BECH32, dec.hrp, dec.data);
        BOOST_CHECK(!recode.empty());
        BOOST_CHECK(CaseInsensitiveEqual(str, recode));
    }
}

BOOST_AUTO_TEST_CASE(bech32m_mod_testvectors_valid)
{
    static const std::string CASES[] = {
        "A1LQFN3A",
        "a1lqfn3a",
        "an83characterlonghumanreadablepartthatcontainsthetheexcludedcharactersbioandnumber11sg7hg6",
        "abcdef1l7aum6echk45nj3s0wdvt2fg8x9yrzpqzd3ryx",
        "11llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllludsr8",
        "split1checkupstagehandshakeupstreamerranterredcaperredlc445v",
        "?1v759aa"
    };
    for (const std::string& str : CASES) {
        const auto dec = bech32_mod::Decode(str);
        BOOST_CHECK(dec.encoding == bech32_mod::Encoding::BECH32M);
        std::string recode = bech32_mod::Encode(bech32_mod::Encoding::BECH32M, dec.hrp, dec.data);
        BOOST_CHECK(!recode.empty());
        BOOST_CHECK(CaseInsensitiveEqual(str, recode));
    }
}

BOOST_AUTO_TEST_CASE(bech32_mod_testvectors_invalid)
{
    static const std::string CASES[] = {
        " 1nwldj5",
        "\x7f""1axkwrx",
        "\x80""1eym55h",
        "an84characterslonghumanreadablepartthatcontainsthenumber1andtheexcludedcharactersbio1569pvx",
        "pzry9x0s0muk",
        "1pzry9x0s0muk",
        "x1b4n0q5v",
        "li1dgmt3",
        "de1lg7wt\xff",
        "A1G7SGD8",
        "10a06t8",
        "1qzzfhee",
        "a12UEL5L",
        "A12uEL5L",
        "abcdef1qpzrz9x8gf2tvdw0s3jn54khce6mua7lmqqqxw",
        "test1zg69w7y6hn0aqy352euf40x77qddq3dc",
    };
    static const std::pair<std::string, std::vector<int>> ERRORS[] = {
        {"Invalid character or mixed case", {0}},
        {"Invalid character or mixed case", {0}},
        {"Invalid character or mixed case", {0}},
        {"Bech32 string too long", {90}},
        {"Missing separator", {}},
        {"Invalid separator position", {0}},
        {"Invalid Base 32 character", {2}},
        {"Invalid separator position", {2}},
        {"Invalid character or mixed case", {8}},
        {"Invalid checksum", {}}, // The checksum is calculated using the uppercase form so the entire string is invalid, not just a few characters
        {"Invalid separator position", {0}},
        {"Invalid separator position", {0}},
        {"Invalid character or mixed case", {3, 4, 5, 7}},
        {"Invalid character or mixed case", {3}},
        {"Invalid Bech32 checksum", {11}},
        {"Invalid Bech32 checksum", {9, 16}},
    };
    static_assert(std::size(CASES) == std::size(ERRORS), "Bech32 CASES and ERRORS should have the same length");

    int i = 0;
    for (const std::string& str : CASES) {
        const auto& err = ERRORS[i];
        const auto dec = bech32_mod::Decode(str);
        BOOST_CHECK(dec.encoding == bech32_mod::Encoding::INVALID);
        auto [error, error_locations] = bech32_mod::LocateErrors(str);
        BOOST_CHECK_EQUAL(err.first, error);
        BOOST_CHECK(err.second == error_locations);
        i++;
    }
}

BOOST_AUTO_TEST_CASE(bech32m_mod_testvectors_invalid)
{
    static const std::string CASES[] = {
        " 1xj0phk",
        "\x7f""1g6xzxy",
        "\x80""1vctc34",
        "an84characterslonghumanreadablepartthatcontainsthetheexcludedcharactersbioandnumber11d6pts4",
        "qyrz8wqd2c9m",
        "1qyrz8wqd2c9m",
        "y1b0jsk6g",
        "lt1igcx5c0",
        "in1muywd",
        "mm1crxm3i",
        "au1s5cgom",
        "M1VUXWEZ",
        "16plkw9",
        "1p2gdwpf",
        "abcdef1l7aum6echk45nj2s0wdvt2fg8x9yrzpqzd3ryx",
        "test1zg69v7y60n00qy352euf40x77qcusag6",
    };
    static const std::pair<std::string, std::vector<int>> ERRORS[] = {
        {"Invalid character or mixed case", {0}},
        {"Invalid character or mixed case", {0}},
        {"Invalid character or mixed case", {0}},
        {"Bech32 string too long", {90}},
        {"Missing separator", {}},
        {"Invalid separator position", {0}},
        {"Invalid Base 32 character", {2}},
        {"Invalid Base 32 character", {3}},
        {"Invalid separator position", {2}},
        {"Invalid Base 32 character", {8}},
        {"Invalid Base 32 character", {7}},
        {"Invalid checksum", {}},
        {"Invalid separator position", {0}},
        {"Invalid separator position", {0}},
        {"Invalid Bech32m checksum", {21}},
        {"Invalid Bech32m checksum", {13, 32}},
    };
    static_assert(std::size(CASES) == std::size(ERRORS), "Bech32m CASES and ERRORS should have the same length");

    int i = 0;
    for (const std::string& str : CASES) {
        const auto& err = ERRORS[i];
        const auto dec = bech32_mod::Decode(str);
        BOOST_CHECK(dec.encoding == bech32_mod::Encoding::INVALID);
        auto [error, error_locations] = bech32_mod::LocateErrors(str);
        BOOST_CHECK_EQUAL(err.first, error);
        BOOST_CHECK(err.second == error_locations);
        i++;
    }
}
*/

BOOST_AUTO_TEST_SUITE_END()
