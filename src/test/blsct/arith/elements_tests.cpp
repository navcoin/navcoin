// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
//
#include <test/util/setup_common.h>

#include <boost/test/unit_test.hpp>
#include <blsct/arith/g1point.h>
#include <blsct/arith/scalar.h>
#include <blsct/arith/mcl_initializer.h>
#include <blsct/arith/elements.h>
#include <algorithm>
#include <set>
#include <streams.h>

struct ElementsTests {
    ElementsTests() 
    { 
        G1Point::Init();
    }
};

BOOST_TEST_GLOBAL_FIXTURE(ElementsTests);

BOOST_AUTO_TEST_CASE(test_elements_constructors)
{
}

BOOST_AUTO_TEST_CASE(test_elements_sum)
{
}

BOOST_AUTO_TEST_CASE(test_elements_confirm_sizes_match)
{
}

BOOST_AUTO_TEST_CASE(test_elements_operator_caret)
{
}

BOOST_AUTO_TEST_CASE(test_elements_operator_mul)
{
}

BOOST_AUTO_TEST_CASE(test_elements_operator_add)
{
}

BOOST_AUTO_TEST_CASE(test_elements_operator_eq)
{
}

BOOST_AUTO_TEST_CASE(test_elements_operator_ne)
{
}

BOOST_AUTO_TEST_CASE(test_elements_from)
{
}

BOOST_AUTO_TEST_CASE(test_elements_to)
{
}


