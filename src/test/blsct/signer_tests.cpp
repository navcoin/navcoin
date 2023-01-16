// Copyright (c) 2022 The Navcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#define BOOST_UNIT_TEST

#include <boost/test/unit_test.hpp>
#include <test/util/setup_common.h>
#include <util/strencodings.h>
#include <blsct/signer.h>

BOOST_FIXTURE_TEST_SUITE(signer_tests, MclTestingSetup)

BOOST_AUTO_TEST_CASE(test_foo)
{
    blsct::PrivateKey sk(1);
    std::vector<uint8_t> msg;
    auto sig = blsct::Signer::CoreSign(sk, msg);
}

BOOST_AUTO_TEST_CASE(test_sign)
{
}

BOOST_AUTO_TEST_SUITE_END()

