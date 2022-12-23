// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <test/util/setup_common.h>

#include <algorithm>
#include <blsct/arith/elements.h>
#include <blsct/arith/her/her_g1point.h>
#include <blsct/arith/her/her_scalar.h>
#include <blsct/arith/initializer.h>
#include <blsct/arith/scalar.h>
#include <boost/test/unit_test.hpp>
#include <set>
#include <streams.h>

BOOST_FIXTURE_TEST_SUITE(elements_tests, HerTestingSetup)

BOOST_AUTO_TEST_CASE(test_elements_constructors)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{1}, HerScalar{2} });
        BOOST_CHECK(ss.Size() == 2);
        BOOST_CHECK(ss[0].GetUint64() == 1);
        BOOST_CHECK(ss[1].GetUint64() == 2);
    }
    {
        HerScalar s(2);
        Scalars<HerScalar> ss(3, s);
        BOOST_CHECK(ss.Size() == 3);
        BOOST_CHECK(ss[0].GetUint64() == 2);
        BOOST_CHECK(ss[1].GetUint64() == 2);
        BOOST_CHECK(ss[2].GetUint64() == 2);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> g1s(2, g);
        BOOST_CHECK(g1s.Size() == 2);
        BOOST_CHECK(g1s[0] == g);
        BOOST_CHECK(g1s[1] == g);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        auto g2 = g + g;
        Points<HerG1Point> g1s(std::vector<HerG1Point> { g, g2 });
        BOOST_CHECK(g1s.Size() == 2);
        BOOST_CHECK(g1s[0] == g);
        BOOST_CHECK(g1s[1] == g2);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_size)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{1}, HerScalar{2} });
        BOOST_CHECK(ss.Size() == 2);
    }
    {
        Scalars<HerScalar> ss;
        BOOST_CHECK(ss.Size() == 0);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> g1s(std::vector<HerG1Point> { g, g + g });
        BOOST_CHECK(g1s.Size() == 2);
    }
    {
        Points<HerG1Point> g1s;
        BOOST_CHECK(g1s.Size() == 0);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_empty)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{1}, HerScalar{2} });
        BOOST_CHECK(ss.Empty() == false);
    }
    {
        Scalars<HerScalar> ss;
        BOOST_CHECK(ss.Empty() == true);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> g1s(std::vector<HerG1Point> { g, g + g });
        BOOST_CHECK(g1s.Empty() == false);
    }
    {
        Points<HerG1Point> g1s;
        BOOST_CHECK(g1s.Empty() == true);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_sum)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{1}, HerScalar{2} });
        auto sum = ss.Sum();
        BOOST_CHECK_EQUAL(sum.GetUint64(), 3);
    }
    {
        Scalars<HerScalar> ss;
        auto sum = ss.Sum();
        BOOST_CHECK_EQUAL(sum.GetUint64(), 0);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> g1s(std::vector<HerG1Point> { g, g + g });
        auto sum = g1s.Sum();
        BOOST_CHECK(sum == (g * 3));
    }
    {
        Points<HerG1Point> g1s;
        auto sum = g1s.Sum();
        HerG1Point g;
        BOOST_CHECK(sum == g);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_add)
{
    {
        Scalars<HerScalar> ss;
        HerScalar x(1);
        ss.Add(x);
        BOOST_CHECK(ss.Size() == 1);
        BOOST_CHECK(ss[0].GetUint64() == 1);
    }
    {
        Points<HerG1Point> g1s;
        auto g = HerG1Point::GetBasePoint();
        g1s.Add(g);
        BOOST_CHECK(g1s.Size() == 1);
        BOOST_CHECK(g1s[0] == g);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_confirm_sizes_match)
{
    {
        Scalars<HerScalar> s1(std::vector<HerScalar> { HerScalar{1} });
        Scalars<HerScalar> s2(std::vector<HerScalar>{ HerScalar{1}, HerScalar{2} });
        BOOST_CHECK_THROW(s1.ConfirmSizesMatch(s2.Size()), std::runtime_error);
    }
    {
        Scalars<HerScalar> s1(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        Scalars<HerScalar> s2(std::vector<HerScalar>{ HerScalar{1}, HerScalar{2} });
        BOOST_CHECK_NO_THROW(s1.ConfirmSizesMatch(s2.Size()));
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g });
        Points<HerG1Point> hh(std::vector<HerG1Point>{ g });
        BOOST_CHECK_THROW(gg.ConfirmSizesMatch(hh.Size()), std::runtime_error);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g });
        Points<HerG1Point> hh(std::vector<HerG1Point>{ g, g * 3 });
        BOOST_CHECK_NO_THROW(gg.ConfirmSizesMatch(hh.Size()));
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_mul_scalars)
{
    // Points<HerG1Point> ^ Scalars<HerScalar> -> Points<HerG1Point>
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g });
        auto hh = gg * ss;

        auto h1 = g * HerScalar(2);
        auto h2 = (g + g) * HerScalar(3);
        Points<HerG1Point> ii(std::vector<HerG1Point> { h1, h2 });

        BOOST_CHECK(hh == ii);
    }
    // Scalars<HerScalar> ^ Scalars<HerScalar> -> Scalars<HerScalar>
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        Scalars<HerScalar> tt(std::vector<HerScalar>{ HerScalar{3}, HerScalar{4} });
        auto uu = ss * tt;

        Scalars<HerScalar> vv(std::vector<HerScalar> { HerScalar{6}, HerScalar{12} });

        BOOST_CHECK(uu == vv);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_mul_scalar)
{
    // Scalars<HerScalar> * Scalar -> Scalars<HerScalar>
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        HerScalar z(5);
        auto r1 = ss * z;

        auto zz = Scalars<HerScalar>::RepeatN(z, ss.Size());
        auto r2 = ss * zz;

        BOOST_CHECK(r1 == r2);
    }
    // Points<HerG1Point> * Scalar -> Points<HerG1Point>
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g });
        HerScalar z(3);
        auto r1 = gg * z;

        auto zz = Scalars<HerScalar>::RepeatN(z, gg.Size());
        auto r2 = gg * zz;

        BOOST_CHECK(r1 == r2);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_add)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        Scalars<HerScalar> tt(std::vector<HerScalar>{ HerScalar{3}, HerScalar{4} });
        auto uu = ss + tt;

        Scalars<HerScalar> vv(std::vector<HerScalar> { HerScalar{5}, HerScalar{7} });
        BOOST_CHECK(uu == vv);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g });
        Points<HerG1Point> hh(std::vector<HerG1Point>{ g + g, g });
        auto ii = gg + hh;

        Points<HerG1Point> jj(std::vector<HerG1Point> { g + g + g, g + g + g });
        BOOST_CHECK(ii == jj);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_sub)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{7}, HerScalar{6} });
        Scalars<HerScalar> tt(std::vector<HerScalar> { HerScalar{3}, HerScalar{4} });
        auto uu = ss - tt;

        Scalars<HerScalar> vv(std::vector<HerScalar> { HerScalar{4}, HerScalar{2} });
        BOOST_CHECK(uu == vv);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> gg(std::vector<HerG1Point> { g + g + g, g + g + g + g });
        Points<HerG1Point> hh(std::vector<HerG1Point> { g, g });
        auto ii = gg - hh;

        Points<HerG1Point> jj(std::vector<HerG1Point> { g + g, g + g + g });
        BOOST_CHECK(ii == jj);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_assign)
{
    {
        Scalars<HerScalar> a(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        Scalars<HerScalar> b;
        b = a;
        BOOST_CHECK(b.Size() == 2);
        BOOST_CHECK(b[0].GetUint64() == 2);
        BOOST_CHECK(b[1].GetUint64() == 3);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        auto g2 = g + g;
        Points<HerG1Point> gs(std::vector<HerG1Point> { g, g2 });
        Points<HerG1Point> gs2;
        gs2 = gs;
        BOOST_CHECK(gs2.Size() == 2);
        BOOST_CHECK(gs2[0] == g);
        BOOST_CHECK(gs2[1] == g2);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_eq)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        Scalars<HerScalar> tt(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        auto b = ss == tt;
        BOOST_CHECK(b);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g });
        Points<HerG1Point> hh(std::vector<HerG1Point> { g, g + g });
        auto b = gg == hh;
        BOOST_CHECK(b);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_ne)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        Scalars<HerScalar> tt(std::vector<HerScalar> { HerScalar{1}, HerScalar{3} });
        auto b = ss != tt;
        BOOST_CHECK(b);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g });
        Points<HerG1Point> hh(std::vector<HerG1Point>{g * 10, g + g});
        auto b = gg != hh;
        BOOST_CHECK(b);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_from)
{
    Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{1}, HerScalar{2}, HerScalar{3} });
    {
        auto tt = ss.From(0);
        BOOST_CHECK(ss == tt);
    }
    {
        auto tt = ss.From(1);
        Scalars<HerScalar> uu(std::vector<HerScalar> { HerScalar{2}, HerScalar{3} });
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.From(2);
        Scalars<HerScalar> uu(std::vector<HerScalar> { HerScalar{3} });
        BOOST_CHECK(tt == uu);
    }
    {
        BOOST_CHECK_THROW(ss.From(3), std::runtime_error);
    }

    auto g = HerG1Point::GetBasePoint();
    Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g, g + g + g });
    {
        auto hh = gg.From(0);
        BOOST_CHECK(gg == hh);
    }
    {
        auto hh = gg.From(1);
        Points<HerG1Point> ii(std::vector<HerG1Point> { g + g, g + g + g });
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.From(2);
        Points<HerG1Point> ii(std::vector<HerG1Point> { g + g + g });
        BOOST_CHECK(hh == ii);
    }
    {
        BOOST_CHECK_THROW(gg.From(3), std::runtime_error);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_first_n_pow)
{
    {
        HerScalar k(3);
        auto pows = Scalars<HerScalar>::FirstNPow(k, 3);
        HerScalar p1(1);
        HerScalar p2(3);
        HerScalar p3(9);
        BOOST_CHECK(pows.Size() == 3);
        BOOST_CHECK(pows[0] == p1);
        BOOST_CHECK(pows[1] == p2);
        BOOST_CHECK(pows[2] == p3);
    }
    {
        HerScalar k(3);
        auto pows = Scalars<HerScalar>::FirstNPow(k, 3, 2);
        HerScalar p1(9);
        HerScalar p2(27);
        HerScalar p3(81);
        BOOST_CHECK(pows.Size() == 3);
        BOOST_CHECK(pows[0] == p1);
        BOOST_CHECK(pows[1] == p2);
        BOOST_CHECK(pows[2] == p3);
    }
    {
        HerScalar k(3);
        auto pows = Scalars<HerScalar>::FirstNPow(k, 3);
        auto invPows = Scalars<HerScalar>::FirstNPow(k.Invert(), 3);
        auto r = pows * invPows;
        HerScalar one(1);
        BOOST_CHECK(r[0] == one);
        BOOST_CHECK(r[1] == one);
        BOOST_CHECK(r[2] == one);
    }
    {
        HerScalar one(1);
        for(size_t i=0; i<100; ++i) {
            HerScalar k(i);
            auto pows = Scalars<HerScalar>::FirstNPow(k, 1);
            BOOST_CHECK(pows.Size() == 1);
            BOOST_CHECK(pows[0] == one);
        }
    }
}

BOOST_AUTO_TEST_CASE(test_elements_repeat_n)
{
    HerScalar k(3);
    auto pows = Scalars<HerScalar>::RepeatN(k, 3);
    BOOST_CHECK(pows.Size() == 3);
    BOOST_CHECK(pows[0] == k);
    BOOST_CHECK(pows[1] == k);
    BOOST_CHECK(pows[2] == k);
}

BOOST_AUTO_TEST_CASE(test_elements_rand_vec)
{
    auto xs = Scalars<HerScalar>::RandVec(3);
    BOOST_CHECK(xs.Size() == 3);
}

BOOST_AUTO_TEST_CASE(test_elements_to)
{
    Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{1}, HerScalar{2}, HerScalar{3} });
    {
        auto tt = ss.To(0);
        BOOST_CHECK(tt.Size() == 0);
    }
    {
        auto tt = ss.To(1);
        Scalars<HerScalar> uu(std::vector<HerScalar> { HerScalar{1} });
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.To(2);
        Scalars<HerScalar> uu(std::vector<HerScalar> { HerScalar{1}, HerScalar{2} });
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.To(3);
        BOOST_CHECK(tt == ss);
    }
    {
        BOOST_CHECK_THROW(ss.To(4), std::runtime_error);
    }

    auto g = HerG1Point::GetBasePoint();
    Points<HerG1Point> gg(std::vector<HerG1Point> { g, g + g, g + g + g });
    {
        auto hh = gg.To(0);
        BOOST_CHECK(hh.Size() == 0);
    }
    {
        auto hh = gg.To(1);
        Points<HerG1Point> ii(std::vector<HerG1Point> { g });
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.To(2);
        Points<HerG1Point> ii(std::vector<HerG1Point> { g, g + g });
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.To(3);
        Points<HerG1Point> ii(std::vector<HerG1Point> { g, g + g, g + g+ g });
        BOOST_CHECK(hh == ii);
    }
    {
        BOOST_CHECK_THROW(gg.To(4), std::runtime_error);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_negate)
{
    {
        Scalars<HerScalar> ss(std::vector<HerScalar> { HerScalar{1}, HerScalar{2} });
        auto ss_inv = ss.Negate();
        BOOST_CHECK(ss_inv[0] == ss[0].Negate());
        BOOST_CHECK(ss_inv[1] == ss[1].Negate());
    }
}

BOOST_AUTO_TEST_CASE(test_elements_get_via_index_operator)
{
    {
        HerScalar one(1);
        HerScalar two(2);
        Scalars<HerScalar> xs(std::vector<HerScalar> { one, two });
        BOOST_CHECK(xs[0] == one);
        BOOST_CHECK(xs[1] == two);
        BOOST_CHECK_THROW(xs[2], std::runtime_error);
    }
    {
        auto g = HerG1Point::GetBasePoint();
        auto g2 = g + g;
        Points<HerG1Point> xs(std::vector<HerG1Point> { g, g2 });
        BOOST_CHECK(xs[0] == g);
        BOOST_CHECK(xs[1] == g2);
        BOOST_CHECK_THROW(xs[2], std::runtime_error);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_set_via_index_operator)
{
    {
        HerScalar one(1);
        HerScalar two(2);
        HerScalar three(3);
        Scalars<HerScalar> xs(2, HerScalar(0));
        xs[0] = one;
        xs[1] = two;
        BOOST_CHECK_NO_THROW(xs[0] = one);
        BOOST_CHECK_NO_THROW(xs[1] = two);
        BOOST_CHECK_THROW(xs[2] = three, std::runtime_error);
    }
}

BOOST_AUTO_TEST_SUITE_END()