// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <test/util/setup_common.h>

#include <algorithm>
#include <blsct/arith/elements.h>
#include <blsct/arith/mcl/mcl_g1point.h>
#include <blsct/arith/mcl/mcl_scalar.h>
#include <blsct/arith/initializer.h>
#include <boost/test/unit_test.hpp>
#include <set>
#include <streams.h>

BOOST_FIXTURE_TEST_SUITE(elements_tests, MclTestingSetup)

using P = MclG1Point;
using S = MclScalar;

BOOST_AUTO_TEST_CASE(test_elements_constructors)
{
    {
        Scalars<S> ss(std::vector<S> { S{1}, S{2} });
        BOOST_CHECK(ss.Size() == 2);
        BOOST_CHECK(ss[0].GetUint64() == 1);
        BOOST_CHECK(ss[1].GetUint64() == 2);
    }
    {
        S s(2);
        Scalars<S> ss(3, s);
        BOOST_CHECK(ss.Size() == 3);
        BOOST_CHECK(ss[0].GetUint64() == 2);
        BOOST_CHECK(ss[1].GetUint64() == 2);
        BOOST_CHECK(ss[2].GetUint64() == 2);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> g1s(2, g);
        BOOST_CHECK(g1s.Size() == 2);
        BOOST_CHECK(g1s[0] == g);
        BOOST_CHECK(g1s[1] == g);
    }
    {
        auto g = P::GetBasePoint();
        auto g2 = g + g;
        Points<P> g1s(std::vector<P> { g, g2 });
        BOOST_CHECK(g1s.Size() == 2);
        BOOST_CHECK(g1s[0] == g);
        BOOST_CHECK(g1s[1] == g2);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_size)
{
    {
        Scalars<S> ss(std::vector<S> { S{1}, S{2} });
        BOOST_CHECK(ss.Size() == 2);
    }
    {
        Scalars<S> ss;
        BOOST_CHECK(ss.Size() == 0);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> g1s(std::vector<P> { g, g + g });
        BOOST_CHECK(g1s.Size() == 2);
    }
    {
        Points<P> g1s;
        BOOST_CHECK(g1s.Size() == 0);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_empty)
{
    {
        Scalars<S> ss(std::vector<S> { S{1}, S{2} });
        BOOST_CHECK(ss.Empty() == false);
    }
    {
        Scalars<S> ss;
        BOOST_CHECK(ss.Empty() == true);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> g1s(std::vector<P> { g, g + g });
        BOOST_CHECK(g1s.Empty() == false);
    }
    {
        Points<P> g1s;
        BOOST_CHECK(g1s.Empty() == true);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_sum)
{
    {
        Scalars<S> ss(std::vector<S> { S{1}, S{2} });
        auto sum = ss.Sum();
        BOOST_CHECK_EQUAL(sum.GetUint64(), 3);
    }
    {
        Scalars<S> ss;
        auto sum = ss.Sum();
        BOOST_CHECK_EQUAL(sum.GetUint64(), 0);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> g1s(std::vector<P> { g, g + g });
        auto sum = g1s.Sum();
        BOOST_CHECK(sum == (g * 3));
    }
    {
        Points<P> g1s;
        auto sum = g1s.Sum();
        P g;
        BOOST_CHECK(sum == g);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_add)
{
    {
        Scalars<S> ss;
        S x(1);
        ss.Add(x);
        BOOST_CHECK(ss.Size() == 1);
        BOOST_CHECK(ss[0].GetUint64() == 1);
    }
    {
        Points<P> g1s;
        auto g = P::GetBasePoint();
        g1s.Add(g);
        BOOST_CHECK(g1s.Size() == 1);
        BOOST_CHECK(g1s[0] == g);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_confirm_sizes_match)
{
    {
        Scalars<S> s1(std::vector<S> { S{1} });
        Scalars<S> s2(std::vector<S>{ S{1}, S{2} });
        BOOST_CHECK_THROW(s1.ConfirmSizesMatch(s2.Size()), std::runtime_error);
    }
    {
        Scalars<S> s1(std::vector<S> { S{2}, S{3} });
        Scalars<S> s2(std::vector<S>{ S{1}, S{2} });
        BOOST_CHECK_NO_THROW(s1.ConfirmSizesMatch(s2.Size()));
    }
    {
        auto g = P::GetBasePoint();
        Points<P> gg(std::vector<P> { g, g + g });
        Points<P> hh(std::vector<P>{ g });
        BOOST_CHECK_THROW(gg.ConfirmSizesMatch(hh.Size()), std::runtime_error);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> gg(std::vector<P> { g, g + g });
        Points<P> hh(std::vector<P>{ g, g * 3 });
        BOOST_CHECK_NO_THROW(gg.ConfirmSizesMatch(hh.Size()));
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_mul_scalars)
{
    // Points<P> ^ Scalars<S> -> Points<P>
    {
        Scalars<S> ss(std::vector<S> { S{2}, S{3} });
        auto g = P::GetBasePoint();
        Points<P> gg(std::vector<P> { g, g + g });
        auto hh = gg * ss;

        auto h1 = g * S(2);
        auto h2 = (g + g) * S(3);
        Points<P> ii(std::vector<P> { h1, h2 });

        BOOST_CHECK(hh == ii);
    }
    // Scalars<S> ^ Scalars<S> -> Scalars<S>
    {
        Scalars<S> ss(std::vector<S> { S{2}, S{3} });
        Scalars<S> tt(std::vector<S>{ S{3}, S{4} });
        auto uu = ss * tt;

        Scalars<S> vv(std::vector<S> { S{6}, S{12} });

        BOOST_CHECK(uu == vv);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_mul_scalar)
{
    // Scalars<S> * Scalar -> Scalars<S>
    {
        Scalars<S> ss(std::vector<S> { S{2}, S{3} });
        S z(5);
        auto r1 = ss * z;

        auto zz = Scalars<S>::RepeatN(z, ss.Size());
        auto r2 = ss * zz;

        BOOST_CHECK(r1 == r2);
    }
    // Points<P> * Scalar -> Points<P>
    {
        auto g = P::GetBasePoint();
        Points<P> gg(std::vector<P> { g, g + g });
        S z(3);
        auto r1 = gg * z;

        auto zz = Scalars<S>::RepeatN(z, gg.Size());
        auto r2 = gg * zz;

        BOOST_CHECK(r1 == r2);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_add)
{
    {
        Scalars<S> ss(std::vector<S> { S{2}, S{3} });
        Scalars<S> tt(std::vector<S>{ S{3}, S{4} });
        auto uu = ss + tt;

        Scalars<S> vv(std::vector<S> { S{5}, S{7} });
        BOOST_CHECK(uu == vv);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> gg(std::vector<P> { g, g + g });
        Points<P> hh(std::vector<P>{ g + g, g });
        auto ii = gg + hh;

        Points<P> jj(std::vector<P> { g + g + g, g + g + g });
        BOOST_CHECK(ii == jj);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_sub)
{
    {
        Scalars<S> ss(std::vector<S> { S{7}, S{6} });
        Scalars<S> tt(std::vector<S> { S{3}, S{4} });
        auto uu = ss - tt;

        Scalars<S> vv(std::vector<S> { S{4}, S{2} });
        BOOST_CHECK(uu == vv);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> gg(std::vector<P> { g + g + g, g + g + g + g });
        Points<P> hh(std::vector<P> { g, g });
        auto ii = gg - hh;

        Points<P> jj(std::vector<P> { g + g, g + g + g });
        BOOST_CHECK(ii == jj);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_assign)
{
    {
        Scalars<S> a(std::vector<S> { S{2}, S{3} });
        Scalars<S> b;
        b = a;
        BOOST_CHECK(b.Size() == 2);
        BOOST_CHECK(b[0].GetUint64() == 2);
        BOOST_CHECK(b[1].GetUint64() == 3);
    }
    {
        auto g = P::GetBasePoint();
        auto g2 = g + g;
        Points<P> gs(std::vector<P> { g, g2 });
        Points<P> gs2;
        gs2 = gs;
        BOOST_CHECK(gs2.Size() == 2);
        BOOST_CHECK(gs2[0] == g);
        BOOST_CHECK(gs2[1] == g2);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_eq)
{
    {
        Scalars<S> ss(std::vector<S> { S{2}, S{3} });
        Scalars<S> tt(std::vector<S> { S{2}, S{3} });
        auto b = ss == tt;
        BOOST_CHECK(b);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> gg(std::vector<P> { g, g + g });
        Points<P> hh(std::vector<P> { g, g + g });
        auto b = gg == hh;
        BOOST_CHECK(b);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_ne)
{
    {
        Scalars<S> ss(std::vector<S> { S{2}, S{3} });
        Scalars<S> tt(std::vector<S> { S{1}, S{3} });
        auto b = ss != tt;
        BOOST_CHECK(b);
    }
    {
        auto g = P::GetBasePoint();
        Points<P> gg(std::vector<P> { g, g + g });
        Points<P> hh(std::vector<P>{g * 10, g + g});
        auto b = gg != hh;
        BOOST_CHECK(b);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_from)
{
    Scalars<S> ss(std::vector<S> { S{1}, S{2}, S{3} });
    {
        auto tt = ss.From(0);
        BOOST_CHECK(ss == tt);
    }
    {
        auto tt = ss.From(1);
        Scalars<S> uu(std::vector<S> { S{2}, S{3} });
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.From(2);
        Scalars<S> uu(std::vector<S> { S{3} });
        BOOST_CHECK(tt == uu);
    }
    {
        BOOST_CHECK_THROW(ss.From(3), std::runtime_error);
    }

    auto g = P::GetBasePoint();
    Points<P> gg(std::vector<P> { g, g + g, g + g + g });
    {
        auto hh = gg.From(0);
        BOOST_CHECK(gg == hh);
    }
    {
        auto hh = gg.From(1);
        Points<P> ii(std::vector<P> { g + g, g + g + g });
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.From(2);
        Points<P> ii(std::vector<P> { g + g + g });
        BOOST_CHECK(hh == ii);
    }
    {
        BOOST_CHECK_THROW(gg.From(3), std::runtime_error);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_first_n_pow)
{
    {
        S k(3);
        auto pows = Scalars<S>::FirstNPow(k, 3);
        S p1(1);
        S p2(3);
        S p3(9);
        BOOST_CHECK(pows.Size() == 3);
        BOOST_CHECK(pows[0] == p1);
        BOOST_CHECK(pows[1] == p2);
        BOOST_CHECK(pows[2] == p3);
    }
    {
        S k(3);
        auto pows = Scalars<S>::FirstNPow(k, 3, 2);
        S p1(9);
        S p2(27);
        S p3(81);
        BOOST_CHECK(pows.Size() == 3);
        BOOST_CHECK(pows[0] == p1);
        BOOST_CHECK(pows[1] == p2);
        BOOST_CHECK(pows[2] == p3);
    }
    {
        S k(3);
        auto pows = Scalars<S>::FirstNPow(k, 3);
        auto invPows = Scalars<S>::FirstNPow(k.Invert(), 3);
        auto r = pows * invPows;
        S one(1);
        BOOST_CHECK(r[0] == one);
        BOOST_CHECK(r[1] == one);
        BOOST_CHECK(r[2] == one);
    }
    {
        S one(1);
        for(size_t i=0; i<100; ++i) {
            S k(i);
            auto pows = Scalars<S>::FirstNPow(k, 1);
            BOOST_CHECK(pows.Size() == 1);
            BOOST_CHECK(pows[0] == one);
        }
    }
}

BOOST_AUTO_TEST_CASE(test_elements_repeat_n)
{
    S k(3);
    auto pows = Scalars<S>::RepeatN(k, 3);
    BOOST_CHECK(pows.Size() == 3);
    BOOST_CHECK(pows[0] == k);
    BOOST_CHECK(pows[1] == k);
    BOOST_CHECK(pows[2] == k);
}

BOOST_AUTO_TEST_CASE(test_elements_rand_vec)
{
    auto xs = Scalars<S>::RandVec(3);
    BOOST_CHECK(xs.Size() == 3);
}

BOOST_AUTO_TEST_CASE(test_elements_to)
{
    Scalars<S> ss(std::vector<S> { S{1}, S{2}, S{3} });
    {
        auto tt = ss.To(0);
        BOOST_CHECK(tt.Size() == 0);
    }
    {
        auto tt = ss.To(1);
        Scalars<S> uu(std::vector<S> { S{1} });
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.To(2);
        Scalars<S> uu(std::vector<S> { S{1}, S{2} });
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.To(3);
        BOOST_CHECK(tt == ss);
    }
    {
        BOOST_CHECK_THROW(ss.To(4), std::runtime_error);
    }

    auto g = P::GetBasePoint();
    Points<P> gg(std::vector<P> { g, g + g, g + g + g });
    {
        auto hh = gg.To(0);
        BOOST_CHECK(hh.Size() == 0);
    }
    {
        auto hh = gg.To(1);
        Points<P> ii(std::vector<P> { g });
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.To(2);
        Points<P> ii(std::vector<P> { g, g + g });
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.To(3);
        Points<P> ii(std::vector<P> { g, g + g, g + g+ g });
        BOOST_CHECK(hh == ii);
    }
    {
        BOOST_CHECK_THROW(gg.To(4), std::runtime_error);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_negate)
{
    {
        Scalars<S> ss(std::vector<S> { S{1}, S{2} });
        auto ss_inv = ss.Negate();
        BOOST_CHECK(ss_inv[0] == ss[0].Negate());
        BOOST_CHECK(ss_inv[1] == ss[1].Negate());
    }
}

BOOST_AUTO_TEST_CASE(test_elements_get_via_index_operator)
{
    {
        S one(1);
        S two(2);
        Scalars<S> xs(std::vector<S> { one, two });
        BOOST_CHECK(xs[0] == one);
        BOOST_CHECK(xs[1] == two);
        BOOST_CHECK_THROW(xs[2], std::runtime_error);
    }
    {
        auto g = P::GetBasePoint();
        auto g2 = g + g;
        Points<P> xs(std::vector<P> { g, g2 });
        BOOST_CHECK(xs[0] == g);
        BOOST_CHECK(xs[1] == g2);
        BOOST_CHECK_THROW(xs[2], std::runtime_error);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_set_via_index_operator)
{
    {
        S one(1);
        S two(2);
        S three(3);
        Scalars<S> xs(2, S(0));
        xs[0] = one;
        xs[1] = two;
        BOOST_CHECK_NO_THROW(xs[0] = one);
        BOOST_CHECK_NO_THROW(xs[1] = two);
        BOOST_CHECK_THROW(xs[2] = three, std::runtime_error);
    }
}

BOOST_AUTO_TEST_SUITE_END()