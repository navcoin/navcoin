// Copyright (c) 2022 The Navcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
//
#include <test/util/setup_common.h>

#include <blsct/keys.h>
#include <boost/test/unit_test.hpp>

BOOST_FIXTURE_TEST_SUITE(keys_tests, HerTestingSetup)

using P = HerG1Point;
using S = HerScalar;

BOOST_AUTO_TEST_CASE(blsct_keys)
{
    // Single Public Key
    P generator = P::GetBasePoint();

    blsct::PublicKey<P> invalidKey;
    BOOST_CHECK(!invalidKey.IsValid());

    blsct::PublicKey<P> keyFromVch(generator.GetVch());
    BOOST_CHECK(keyFromVch.IsValid());
    BOOST_CHECK(generator.GetVch() == keyFromVch.GetVch());
    BOOST_CHECK(keyFromVch.ToString() ==
                "97f1d3a73197d7942695638c4fa9ac0fc3688c4f9774b905a14e3a3f171bac58"
                "6c55e83ff97a1aeffb3af00adb22c6bb");

    blsct::PublicKey<P> keyFromPoint(generator);
    BOOST_CHECK(keyFromPoint.IsValid());
    BOOST_CHECK(generator.GetVch() == keyFromPoint.GetVch());

    P point(generator.GetVch());
    P keyPointFromPoint;
    P keyPointFromVector;

    bool ret = keyFromVch.GetG1Point(keyPointFromVector);
    BOOST_CHECK(ret == true);

    ret = keyFromPoint.GetG1Point(keyPointFromPoint);
    BOOST_CHECK(ret == true);

    BOOST_CHECK(point == keyPointFromVector);
    BOOST_CHECK(point == keyPointFromPoint);

    P randomPoint = P::Rand();

    blsct::PublicKey<P> keyFromVchRandom(randomPoint.GetVch());
    BOOST_CHECK(randomPoint.GetVch() == keyFromVchRandom.GetVch());

    blsct::PublicKey<P> keyFromPointRandom(randomPoint);
    BOOST_CHECK(randomPoint.GetVch() == keyFromPointRandom.GetVch());

    P pointR(randomPoint.GetVch());
    P keyPointFromPointRandom;
    P keyPointFromVectorRandom;

    ret = keyFromVchRandom.GetG1Point(keyPointFromVectorRandom);
    BOOST_CHECK(ret == true);

    ret = keyFromPointRandom.GetG1Point(keyPointFromPointRandom);
    BOOST_CHECK(ret == true);

    BOOST_CHECK(pointR == keyPointFromVectorRandom);
    BOOST_CHECK(pointR == keyPointFromPointRandom);

    // Double Public Key
    blsct::DoublePublicKey<P> invalidDoublePublicKey;
    BOOST_CHECK(!invalidDoublePublicKey.IsValid());

    blsct::DoublePublicKey<P> doubleKeyFromPoints(generator, pointR);
    BOOST_CHECK(doubleKeyFromPoints.IsValid());

    blsct::DoublePublicKey<P> doubleKeyFromVectors(generator.GetVch(),
                                                pointR.GetVch());
    BOOST_CHECK(doubleKeyFromVectors.IsValid());

    std::vector<unsigned char> serializedDoubleKey = doubleKeyFromPoints.GetVch();
    std::vector<unsigned char> serializedViewKey(serializedDoubleKey.begin(), serializedDoubleKey.begin() + blsct::PublicKey<P>::SIZE);
    std::vector<unsigned char> serializedSpendKey(serializedDoubleKey.begin() + blsct::PublicKey<P>::SIZE, serializedDoubleKey.end());
    BOOST_CHECK(serializedViewKey == generator.GetVch());
    BOOST_CHECK(serializedSpendKey == pointR.GetVch());

    P viewKey;

    ret = doubleKeyFromPoints.GetViewKey(viewKey);
    BOOST_CHECK(ret == true);
    BOOST_CHECK(viewKey == generator);

    P spendKey;

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
    blsct::PrivateKey<P> invalidPrivateKey;
    BOOST_CHECK(!invalidPrivateKey.IsValid<S>());

    std::vector<unsigned char> vectorKey = {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
        16, 17, 1, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};

    blsct::PrivateKey<P> privateKeyFromVector(vectorKey);
    BOOST_CHECK(privateKeyFromVector.IsValid<S>());
    BOOST_CHECK(privateKeyFromVector.GetScalar<S>().GetVch() == vectorKey);

    S scalarFromVector(vectorKey);
    blsct::PrivateKey<P> privateKeyFromScalar(scalarFromVector);
    BOOST_CHECK(privateKeyFromScalar.IsValid<S>());
    BOOST_CHECK(privateKeyFromScalar.GetScalar<S>().GetVch() == vectorKey);

    // G(a+b) == Ga + Gb
    blsct::PrivateKey<P> privateKeyFromAddition(privateKeyFromScalar.GetScalar<S>() +
                                                privateKeyFromVector.GetScalar<S>());
    blsct::PublicKey<P> publicKeyFromAddition(privateKeyFromScalar.GetPoint<S>() +
                                              privateKeyFromVector.GetPoint<S>());
    BOOST_CHECK(privateKeyFromAddition.GetPublicKey() == publicKeyFromAddition);

    std::vector<blsct::PublicKey<P>> vecKeys = {privateKeyFromScalar.GetPublicKey(), privateKeyFromVector.GetPublicKey()};
    BOOST_CHECK(blsct::PublicKey<P>::Aggregate(vecKeys) == publicKeyFromAddition);
}

BOOST_AUTO_TEST_SUITE_END()
