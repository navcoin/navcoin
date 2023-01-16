// Copyright (c) 2022 The Navcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <boost/test/unit_test.hpp>
#include <test/util/setup_common.h>
#include <util/strencodings.h>
#include <blsct/util.h>

BOOST_FIXTURE_TEST_SUITE(blsct_util_tests, MclTestingSetup)

BOOST_AUTO_TEST_CASE(test_uint64_to_bytes)
{
    {
        auto act = blsct::Util::uint64_to_bytes(0);
        std::array<uint8_t,8> exp {0, 0, 0, 0, 0, 0, 0, 0};
        BOOST_CHECK(act == exp);
    }
    {
        auto act = blsct::Util::uint64_to_bytes(1);
        std::array<uint8_t,8> exp {1, 0, 0, 0, 0, 0, 0, 0};
        BOOST_CHECK(act == exp);
    }
    {
        uint64_t n = std::numeric_limits<uint64_t>::max() - 1;
        auto act = blsct::Util::uint64_to_bytes(n);
        std::array<uint8_t,8> exp {254, 255, 255, 255, 255, 255, 255, 255};
        BOOST_CHECK(act == exp);
    }
    {
        uint64_t n = std::numeric_limits<uint64_t>::max();
        auto act = blsct::Util::uint64_to_bytes(n);
        std::array<uint8_t,8> exp {255, 255, 255, 255, 255, 255, 255, 255};
        BOOST_CHECK(act == exp);
    }
}

BOOST_AUTO_TEST_CASE(test_bytes_to_uint64)
{
    {
        std::array<uint8_t,8> a {0, 0, 0, 0, 0, 0, 0, 0};
        auto act = blsct::Util::bytes_to_uint64(a);
        uint64_t exp = 0;
        BOOST_CHECK(act == exp);
    }
    {
        std::array<uint8_t,8> a {1, 0, 0, 0, 0, 0, 0, 0};
        auto act = blsct::Util::bytes_to_uint64(a);
        uint64_t exp = 1;
        BOOST_CHECK(act == exp);
    }
    {
        std::array<uint8_t,8> a {254, 255, 255, 255, 255, 255, 255, 255};
        auto act = blsct::Util::bytes_to_uint64(a);
        uint64_t exp = std::numeric_limits<uint64_t>::max() - 1;
        BOOST_CHECK(act == exp);
    }
    {
        std::array<uint8_t,8> a {255, 255, 255, 255, 255, 255, 255, 255};
        auto act = blsct::Util::bytes_to_uint64(a);
        uint64_t exp = std::numeric_limits<uint64_t>::max();
        BOOST_CHECK(act == exp);
    }
}

BOOST_AUTO_TEST_SUITE_END()

