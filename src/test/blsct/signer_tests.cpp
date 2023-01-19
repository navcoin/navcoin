// Copyright (c) 2022 The Navcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#define BOOST_UNIT_TEST
#define BLS_ETH 1

#include <boost/test/unit_test.hpp>
#include <test/util/setup_common.h>
#include <util/strencodings.h>
#include <blsct/signer.h>

BOOST_FIXTURE_TEST_SUITE(blsct_signer_tests, MclTestingSetup)

BOOST_AUTO_TEST_CASE(compare_sk_pk)
{
    // secret key
    blsSecretKey bls_sk{1};
    blsct::PrivateKey blsct_sk(bls_sk.v);
    auto a = blsct_sk.GetScalar().m_fr;
    auto b = bls_sk.v;
    BOOST_CHECK(mclBnFr_isEqual(&a, &b) == 1);

    // public key
    blsct::PublicKey blsct_pk = blsct_sk.GetPublicKey();
    MclG1Point blsct_g1_point;
    blsct_pk.GetG1Point(blsct_g1_point);

    blsPublicKey bls_pk;
    blsGetPublicKey(&bls_pk, &bls_sk);
    auto c = blsct_g1_point.m_p;
    auto d = bls_pk.v;
    BOOST_CHECK(mclBnG1_isEqual(&c, &d) == 1);

    // to suppress abort
    blsSignature sig;
    const char *msg = "abc";
    size_t msgSize = 3;
    blsSign(&sig, &bls_sk, msg, msgSize);
}

// BOOST_AUTO_TEST_CASE(test_sign_verify_balance)
// {
//     blsct::PrivateKey sk(1);

//     auto pk = sk.GetPublicKey();
//     auto sig = blsct::Signer::SignBalance(sk);

//     auto res = blsct::Signer::VerifyBalance(pk, sig);
//     BOOST_CHECK(res == true);
// }

// BOOST_AUTO_TEST_CASE(test_simple_sample)
// {
//     blsSecretKey sec;
//     blsSecretKeySetDecStr(&sec, "13", 2);
//     blsPublicKey pub;
//     blsGetPublicKey(&pub, &sec);
//     blsSignature sig;
//     const char *msg = "abc";
//     size_t msgSize = 3;
//     blsSign(&sig, &sec, msg, msgSize);
//     printf("verify correct message %d\n", blsVerify(&sig, &pub, msg, msgSize));
//     printf("verify wrong message %d\n", blsVerify(&sig, &pub, "xyz", msgSize));
// }

BOOST_AUTO_TEST_SUITE_END()

