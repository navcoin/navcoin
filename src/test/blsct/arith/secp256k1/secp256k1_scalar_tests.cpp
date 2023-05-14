// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <test/util/setup_common.h>
#include <blsct/arith/secp256k1/secp256k1_scalar.h>
#include <blsct/arith/secp256k1/secp256k1_point.h>
#include <boost/test/unit_test.hpp>

#include <cmath>
#include <limits>

using Scalar = Secp256k1Scalar;
using Point = Secp256k1Point;

#define CURVE_ORDER_VEC(x) \
std::vector<uint8_t> x = { \
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, \
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfe, \
    0xba, 0xae, 0xdc, 0xe6, 0xaf, 0x48, 0xa0, 0x3b, \
    0xbf, 0xd2, 0x5e, 0x8c, 0xd0, 0x36, 0x41, 0x41 \
};

#define CURVE_ORDER_MINUS_1_VEC(x) \
std::vector<uint8_t> x = { \
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, \
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xfe, \
    0xba, 0xae, 0xdc, 0xe6, 0xaf, 0x48, 0xa0, 0x3b, \
    0xbf, 0xd2, 0x5e, 0x8c, 0xd0, 0x36, 0x41, 0x40 \
};

#define CURVE_ORDER_MINUS_1_SCALAR(x) \
CURVE_ORDER_MINUS_1_VEC(curve_order_minus_1); Scalar x(curve_order_minus_1);

#define CURVE_ORDER_MINUS_1_STR "fffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364140"

BOOST_FIXTURE_TEST_SUITE(secp256k1_scalar_tests, BasicTestingSetup)

#include "../shared_scalar_tests.h"

BOOST_AUTO_TEST_CASE(test_get_uint64_uint32_input)
{
    {
        // Scalar(int) operator takes uint32_t, so let it take UINT32_MAX
        Scalar a(UINT32_MAX);
        uint64_t b = a.GetUint64();
        uint64_t c = 4294967295U; // is UINT32_MAX
        BOOST_CHECK_EQUAL(b, c);
    }
    {
        // assignment operator takes uint32_t
        uint64_t n = 1;
        for (uint8_t i = 0; i < 31; ++i) { // test up to uint32_t max
            Scalar a(n);
            BOOST_CHECK_EQUAL(a.GetUint64(), n);
            n <<= 1;
        }
    }
    {
        Scalar s(0);
        uint64_t exp = 0;
        BOOST_CHECK_EQUAL(s.GetUint64(), exp);
    }
}

BOOST_AUTO_TEST_CASE(test_hash_with_salt)
{
    Scalar a(1);
    const int n = 51;
    uint256 digest = a.GetHashWithSalt(n);
    auto act = digest.GetHex();
    std::string exp("ccf3c17eeef9710908b3a66f5103cf97cc7313e0f49cf93429dc92d01f8fd5b2");
    BOOST_CHECK(act == exp);
}

BOOST_AUTO_TEST_CASE(test_deserialization)
{
    Scalar n;
    {
        std::vector<uint8_t> buf(32, 1);
        BOOST_CHECK_NO_THROW(n.SetVch(buf));
    }
    {
        std::vector<uint8_t> buf(31, 1);
        BOOST_CHECK_THROW(n.SetVch(buf), std::runtime_error);
    }
    {
        std::vector<uint8_t> buf(33, 1);
        BOOST_CHECK_THROW(n.SetVch(buf), std::runtime_error);
    }
}

BOOST_AUTO_TEST_SUITE_END()
