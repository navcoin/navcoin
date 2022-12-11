// Copyright (c) 2022 The Navcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
//
#include <test/util/setup_common.h>

#include <blsct/arith/point.h>
#include <blsct/arith/her/her_scalar.h>
#include <blsct/arith/her/her_g1point.h>
#include <blsct/arith/her/her_initializer.h>
#include <blsct/keys.h>
#include <boost/test/unit_test.hpp>

BOOST_FIXTURE_TEST_SUITE(keys_tests, HerTestingSetup)

BOOST_AUTO_TEST_CASE(blsct_keys)
{
    // Single Public Key
    HerG1Point generator = HerG1Point::GetBasePoint();

    blsct::PublicKey<HerG1Point> invalidKey;
    BOOST_CHECK(!invalidKey.IsValid());

    blsct::PublicKey<HerG1Point> keyFromVch(generator.GetVch());
    BOOST_CHECK(keyFromVch.IsValid());
    BOOST_CHECK(generator.GetVch() == keyFromVch.GetVch());
    BOOST_CHECK(keyFromVch.ToString() ==
                "97f1d3a73197d7942695638c4fa9ac0fc3688c4f9774b905a14e3a3f171bac58"
                "6c55e83ff97a1aeffb3af00adb22c6bb");

    blsct::PublicKey<HerG1Point> keyFromPoint(generator);
    BOOST_CHECK(keyFromPoint.IsValid());
    BOOST_CHECK(generator.GetVch() == keyFromPoint.GetVch());

    HerG1Point point(generator.GetVch());
    HerG1Point keyPointFromPoint;
    HerG1Point keyPointFromVector;

    bool ret = keyFromVch.GetG1Point(keyPointFromVector);
    BOOST_CHECK(ret == true);

    ret = keyFromPoint.GetG1Point(keyPointFromPoint);
    BOOST_CHECK(ret == true);

    BOOST_CHECK(point == keyPointFromVector);
    BOOST_CHECK(point == keyPointFromPoint);

    HerG1Point randomPoint = HerG1Point::Rand();

    blsct::PublicKey<HerG1Point> keyFromVchRandom(randomPoint.GetVch());
    BOOST_CHECK(randomPoint.GetVch() == keyFromVchRandom.GetVch());

    blsct::PublicKey<HerG1Point> keyFromPointRandom(randomPoint);
    BOOST_CHECK(randomPoint.GetVch() == keyFromPointRandom.GetVch());

    HerG1Point pointR(randomPoint.GetVch());
    HerG1Point keyPointFromPointRandom;
    HerG1Point keyPointFromVectorRandom;

    ret = keyFromVchRandom.GetG1Point(keyPointFromVectorRandom);
    BOOST_CHECK(ret == true);

    ret = keyFromPointRandom.GetG1Point(keyPointFromPointRandom);
    BOOST_CHECK(ret == true);

    BOOST_CHECK(pointR == keyPointFromVectorRandom);
    BOOST_CHECK(pointR == keyPointFromPointRandom);

    // Double Public Key
    blsct::DoublePublicKey<HerG1Point> invalidDoublePublicKey;
    BOOST_CHECK(!invalidDoublePublicKey.IsValid());

    blsct::DoublePublicKey<HerG1Point> doubleKeyFromPoints(generator, pointR);
    BOOST_CHECK(doubleKeyFromPoints.IsValid());

    blsct::DoublePublicKey<HerG1Point> doubleKeyFromVectors(generator.GetVch(),
                                                pointR.GetVch());
    BOOST_CHECK(doubleKeyFromVectors.IsValid());

    std::vector<unsigned char> serializedDoubleKey = doubleKeyFromPoints.GetVch();
    std::vector<unsigned char> serializedViewKey(serializedDoubleKey.begin(), serializedDoubleKey.begin() + blsct::PublicKey<HerG1Point>::SIZE);
    std::vector<unsigned char> serializedSpendKey(serializedDoubleKey.begin() + blsct::PublicKey<HerG1Point>::SIZE, serializedDoubleKey.end());
    BOOST_CHECK(serializedViewKey == generator.GetVch());
    BOOST_CHECK(serializedSpendKey == pointR.GetVch());

    HerG1Point viewKey;

    ret = doubleKeyFromPoints.GetViewKey(viewKey);
    BOOST_CHECK(ret == true);
    BOOST_CHECK(viewKey == generator);

    HerG1Point spendKey;

    ret = doubleKeyFromPoints.GetSpendKey(spendKey);
    BOOST_CHECK(ret == true);
    BOOST_CHECK(spendKey == pointR);

    ret = doubleKeyFromVectors.GetViewKey(viewKey);
    BOOST_CHECK(ret == true);
    BOOST_CHECK(viewKey == generator);

    ret = doubleKeyFromVectors.GetSpendKey(spendKey);
    BOOST_CHECK(ret == true);
    BOOST_CHECK(spendKey == pointR);

    // Private Key
    blsct::PrivateKey<HerG1Point> invalidPrivateKey;
    BOOST_CHECK(!invalidPrivateKey.IsValid<HerScalar>());

    std::vector<unsigned char> vectorKey = {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
        16, 17, 1, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};

    Scalar<HerScalar> vectorFromScalar = vectorKey;
    blsct::PrivateKey<HerG1Point> privateKeyFromVector(vectorFromScalar);
    BOOST_CHECK(privateKeyFromVector.IsValid<HerScalar>());
    BOOST_CHECK(privateKeyFromVector.GetScalar<HerScalar>().GetVch() == vectorKey);

    Scalar<HerScalar> scalarFromVector(vectorKey);
    blsct::PrivateKey<HerG1Point> privateKeyFromScalar(scalarFromVector);
    BOOST_CHECK(privateKeyFromScalar.IsValid<HerScalar>());
    BOOST_CHECK(privateKeyFromScalar.GetScalar<HerScalar>().GetVch() == vectorKey);

    // G(a+b) == Ga + Gb
    blsct::PrivateKey<HerG1Point> privateKeyFromAddition(privateKeyFromScalar.GetScalar<HerScalar>() +
                                             privateKeyFromVector.GetScalar<HerScalar>());
    blsct::PublicKey<HerG1Point> publicKeyFromAddition(privateKeyFromScalar.GetG1Point<HerG1Point>() +
                                           privateKeyFromVector.GetG1Point<HerG1Point>());
    BOOST_CHECK(privateKeyFromAddition.GetPublicKey() == publicKeyFromAddition);

    std::vector<blsct::PublicKey<HerG1Point>> vecKeys = {privateKeyFromScalar.GetPublicKey(), privateKeyFromVector.GetPublicKey()};
    BOOST_CHECK(blsct::PublicKey<HerG1Point>::Aggregate(vecKeys) == publicKeyFromAddition);
}

BOOST_AUTO_TEST_SUITE_END()
