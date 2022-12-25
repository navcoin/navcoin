// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/elements.h>
#include <blsct/arith/her/her_g1point.h>
#include <blsct/arith/her/her_scalar.h>
#include <blsct/range_proof/lazy_g1point.h>
#include <test/util/setup_common.h>

#include <boost/test/unit_test.hpp>

BOOST_FIXTURE_TEST_SUITE(lazy_g1point_tests, HerTestingSetup)

using P = HerG1Point;
using S = HerScalar;
using PV = mclBnG1;
using PS = mclBnFr;

BOOST_AUTO_TEST_CASE(test_lazy_g1points_ctor)
{
    auto g = P::GetBasePoint();
    auto g2 = g + g;

    LazyG1Points<P,S> points1(
        std::vector<P> { g, g2 },
        std::vector<S> { 1, 2 }
    );

    LazyG1Points<P,S> points2;
    points2.Add(LazyG1Point<P,S>(g, 1));
    points2.Add(LazyG1Point<P,S>(g, 2));

    BOOST_CHECK((points1.Sum()) == (points1.Sum()));
}

BOOST_AUTO_TEST_CASE(test_lazy_g1points_sum)
{
    auto lazy_g = LazyG1Point<P,S>(P::GetBasePoint(), 1);
    auto lazy_g2 = LazyG1Point<P,S>(P::GetBasePoint(), 2);
    LazyG1Points<P,S> lazy_points;
    lazy_points.Add(lazy_g);
    lazy_points.Add(lazy_g2);
    auto lazy_sum = lazy_points.Sum();

    auto g = P::GetBasePoint();
    auto g2 = g + g;
    Points<P> points;
    points.Add(g);
    points.Add(g2);
    auto sum = points.Sum();

    BOOST_CHECK(sum == lazy_sum);
}

BOOST_AUTO_TEST_CASE(test_lazy_g1points_add_lazy_g1points_to_lazy_g1points)
{
    auto g = LazyG1Point<P,S>(P::GetBasePoint(), 1);
    auto g2 = LazyG1Point<P,S>(P::GetBasePoint(), 2);

    LazyG1Points<P,S> ps1, ps2, ps3;
    ps1.Add(g);
    ps2.Add(g2);

    ps3.Add(g);
    ps3.Add(g2);

    BOOST_CHECK((ps3.Sum()) == ((ps1 + ps2).Sum()));
}

BOOST_AUTO_TEST_CASE(test_lazy_g1points_add_lazy_g1points_to_lazy_g1point)
{
    auto g = LazyG1Point<P,S>(P::GetBasePoint(), 1);
    auto g2 = LazyG1Point<P,S>(P::GetBasePoint(), 2);

    LazyG1Points<P,S> ps1;
    ps1.Add(g);
    auto ps2 = ps1 + g2;

    LazyG1Points<P,S> ps3;
    ps3.Add(g);
    ps3.Add(g2);

    BOOST_CHECK((ps3.Sum()) == (ps2.Sum()));
}

BOOST_AUTO_TEST_SUITE_END()