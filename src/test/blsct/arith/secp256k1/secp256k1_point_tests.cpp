// Copyright (c) 2023 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#define BOOST_UNIT_TEST

#include <test/util/setup_common.h>
#include <boost/test/unit_test.hpp>
#include <blsct/arith/secp256k1/secp256k1_point.h>

#define BASE_POINT_HEX "9817f8165b81f259d928ce2ddbfc9b02070b87ce9562a055acbbdcf97e66be79b8d410fb8fd0479c195485a648b417fda808110efcfba45d65c4a32677da3a48";

#define LARGE_NUM_VECTOR(var) \
    std::vector<uint8_t> var { \
        0x73, 0xed, 0xa7, 0x53, 0x29, 0x9d, 0x7d, 0x48, \
        0x33, 0x39, 0xd8, 0x08, 0x09, 0xa1, 0xd8, 0x05, \
        0x53, 0xbd, 0xa4, 0x02, 0xff, 0xfe, 0x5b, 0xfe, \
        0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xd8, 0x08, \
    };

using Point = Secp256k1Point;
using Scalar = Secp256k1Scalar;

BOOST_FIXTURE_TEST_SUITE(secp256k1_point_tests, BasicTestingSetup)

#include "../shared_point_tests.h"

BOOST_AUTO_TEST_CASE(test_vec_from_to_storage)
{
    BOOST_CHECK(Secp256k1Point::SERIALIZATION_SIZE == 64);

    // build test vector
    std::vector<uint8_t> vec;
    for (size_t i=0; i<Secp256k1Point::SERIALIZATION_SIZE; ++i) {
        vec.push_back(i);
    }

    // convert the test vector to storage
    auto st = Secp256k1Point::VecToStorage(vec);

    // check if storage contains expected values
    //
    // typedef struct {
    //     uint64_t n[4];
    // } secp256k1_fe_storage;
    //
    // typedef struct {
    //     secp256k1_fe_storage x;
    //     secp256k1_fe_storage y;
    // } secp256k1_ge_storage;
    //
    std::vector<secp256k1_fe_storage*> fe_sts = {&st.x, &st.y};
    size_t vec_base_idx = 0;

    for (auto fe_st: fe_sts) {
        for (size_t i=0; i<4; ++i) {
            uint64_t v = 0;
            for (size_t j=0; j<8; ++j) {
                v |= static_cast<uint64_t>(vec[vec_base_idx + j]) << (j * 8);
            }
            BOOST_CHECK(fe_st->n[i] == v);
            vec_base_idx += 8;
        }
    }

    // check if the test vector can be recovered from the storage
    auto recovered_vec = Secp256k1Point::StorageToVec(st);
    BOOST_CHECK(vec == recovered_vec);
}

BOOST_AUTO_TEST_CASE(test_uint256_ctor)
{
    Point p(ONE);
    auto s = p.GetString();
    BOOST_CHECK_EQUAL(s, "c80e89bd330da60a7987de682d9087db34f92d3ba44999d7b2187f9e87162a485c3dd715d0453d4665b18c444b77779c3c33e641bf4386c8e0769571f716fedf");
}

BOOST_AUTO_TEST_SUITE_END()
