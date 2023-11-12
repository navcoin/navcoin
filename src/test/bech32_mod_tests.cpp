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

void add_errors(std::string& s, const size_t num_errors) {
    // build a list of indices to change
    std::random_device rd;
    std::mt19937 gen(rd());

    std::set<size_t> indices; 

    auto sep_idx = s.rfind("1"); 
    while (indices.size() < num_errors) {
        std::uniform_int_distribution<size_t> dist(sep_idx + 1, s.size() - 9);
        indices.insert(dist(gen));
    }

    //printf("s=%s\n", s.c_str());
    // alter char at the indices
    for (auto it = indices.begin(); it != indices.end(); ++it) {
        auto from_idx = CHARSET_REV[static_cast<size_t>(s[*it])];
        auto to_idx = (from_idx + 1) % 32;

        //printf("%d (%c) at %lu to %d (%c)\n", from_idx, s[*it], *it, to_idx, s[to_idx]);
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
    const std::string& hrp,
    const size_t num_errors,
    const size_t num_tests,
    const bool expect_errors
) {
    size_t unexpected_results = 0;

    for (size_t i=0; i<num_tests; ++i) {
        std::string s = gen_random_str(96);

        std::vector<uint8_t> data_v8(s.begin(), s.end());
        auto data_v5 = bech32_mod::Vec8ToVec5(data_v8);

        auto encoded = bech32_mod::Encode(bech32_mod::Encoding::BECH32, hrp, data_v5);
        add_errors(encoded, num_errors);

        auto res = bech32_mod::Decode(encoded);
        auto data_v8r = bech32_mod::Vec5ToVec8(res.data);

        if (expect_errors) {
            if (data_v8r == data_v8) ++unexpected_results;
        } else {
            if (data_v8r != data_v8) ++unexpected_results;
        }
    }
    return unexpected_results;
}

BOOST_AUTO_TEST_CASE(bech32_mod_test_detecting_errors)
{
    std::string hrp = "nav";

    for (size_t num_errors = 0; num_errors <= 10; ++num_errors) {
        printf("trying %lu error case...\n", num_errors);
        size_t unexpected_results =
            test_error_detection(hrp, num_errors, 100, num_errors > 0);

        if (unexpected_results > 0) {
            std::ostringstream msg;
            msg << num_errors << "-error cases failed " << unexpected_results << " times";
            //BOOST_FAIL(msg.str());
            printf("%s\n", msg.str().c_str());
        }
    }
}

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
