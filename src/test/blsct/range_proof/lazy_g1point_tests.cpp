// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/elements.h>
#include <blsct/arith/her/her_g1point.h>
#include <blsct/range_proof/lazy_g1point.h>
#include <test/util/setup_common.h>

#include <boost/test/unit_test.hpp>

BOOST_FIXTURE_TEST_SUITE(lazy_g1point_tests, HerTestingSetup)

BOOST_AUTO_TEST_CASE(test_lazy_g1points_ctor)
{
    auto g = Point<HerG1Point>::GetBasePoint();
    auto g2 = g + g;

    LazyG1Points<HerG1Point,HerScalar> points1(
        std::vector<HerG1Point> { g, g2 },
        std::vector<HerScalar> { 1, 2 }
    );

    LazyG1Points<HerG1Point,HerScalar> points2;
    points2.Add(LazyG1Point<HerG1Point,HerScalar>(g, HerScalar(1)));
    points2.Add(LazyG1Point<HerG1Point,HerScalar>(g, HerScalar(2)));

    HerG1Point sum1 = points1.Sum<mclBnG1,mclBnFr>();
    HerG1Point sum2 = points2.Sum<mclBnG1,mclBnFr>();

    BOOST_CHECK(sum1 == sum2);
}

BOOST_AUTO_TEST_CASE(test_lazy_g1points_sum)
{
    auto lazy_g = LazyG1Point<HerG1Point,HerScalar>(HerG1Point::GetBasePoint(), HerScalar(1));
    auto lazy_g2 = LazyG1Point<HerG1Point,HerScalar>(HerG1Point::GetBasePoint(), HerScalar(2));
    LazyG1Points<HerG1Point,HerScalar> lazy_points;
    lazy_points.Add(lazy_g);
    lazy_points.Add(lazy_g2);
    auto lazy_sum = lazy_points.Sum<mclBnG1,mclBnFr>();

    auto g = HerG1Point::GetBasePoint();
    auto g2 = g + g;
    Points<HerG1Point> points;
    points.Add(g);
    points.Add(g2);
    auto sum = points.Sum();

    BOOST_CHECK(sum == lazy_sum);
}

BOOST_AUTO_TEST_CASE(test_lazy_g1points_add_lazy_g1points_to_lazy_g1points)
{
    auto g = LazyG1Point<HerG1Point,HerScalar>(HerG1Point::GetBasePoint(), HerScalar(1));
    auto g2 = LazyG1Point(HerG1Point::GetBasePoint(), HerScalar(2));

    LazyG1Points<HerG1Point,HerScalar> ps1, ps2, ps3;
    ps1.Add(g);
    ps2.Add(g2);

    ps3.Add(g);
    ps3.Add(g2);

    auto sum3 = ps3.Sum<mclBnG1,mclBnFr>();
    auto sum12 = (ps1 + ps2).Sum<mclBnG1,mclBnFr>();

    BOOST_CHECK(sum3 == sum12);
}

BOOST_AUTO_TEST_CASE(test_lazy_g1points_add_lazy_g1points_to_lazy_g1point)
{
    auto g = LazyG1Point(Point<HerG1Point>::GetBasePoint(), HerScalar(1));
    auto g2 = LazyG1Point(Point<HerG1Point>::GetBasePoint(), HerScalar(2));

    LazyG1Points<HerG1Point,HerScalar> ps1;
    ps1.Add(g);
    auto ps2 = ps1 + g2;

    LazyG1Points<HerG1Point,HerScalar> ps3;
    ps3.Add(g);
    ps3.Add(g2);

    BOOST_CHECK((ps3.Sum<mclBnG1,mclBnFr>()) == (ps2.Sum<mclBnG1,mclBnFr>()));
}

BOOST_AUTO_TEST_SUITE_END()
