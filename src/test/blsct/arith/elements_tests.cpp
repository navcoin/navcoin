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
    Scalars ss(std::vector {Scalar{1}, Scalar{2}});
    auto g = G1Point::GetBasePoint();
    BOOST_CHECK(ss.Size() == 2);
    BOOST_CHECK(ss[0].GetInt64() == 1);
    BOOST_CHECK(ss[1].GetInt64() == 2);

    G1Points g1s(std::vector {g, g + g});
    BOOST_CHECK(g1s.Size() == 2);
}

BOOST_AUTO_TEST_CASE(test_elements_sum)
{
    {
        Scalars ss(std::vector {Scalar{1}, Scalar{2}});
        auto sum = ss.Sum();
        BOOST_CHECK_EQUAL(sum.GetInt64(), 3);
    }
    {
        auto g = G1Point::GetBasePoint();
        G1Points g1s(std::vector {g, g + g});
        auto sum = g1s.Sum();
        BOOST_CHECK(sum == (g * 3));
    }
}

BOOST_AUTO_TEST_CASE(test_elements_add)
{
    {
        Scalars ss;
        Scalar x(1);
        ss.Add(x);
        BOOST_CHECK_EQUAL(ss.Size(), 1);
        BOOST_CHECK_EQUAL(ss[0].GetInt64(), 1);
    }
    {
        G1Points g1s;
        auto g = G1Point::GetBasePoint();
        g1s.Add(g);
        BOOST_CHECK_EQUAL(g1s.Size(), 1);
        BOOST_CHECK(g1s[0] == g);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_confirm_sizes_match)
{
    {
        Scalars s1(std::vector {Scalar{1}});
        Scalars s2(std::vector {Scalar{1}, Scalar{2}});
        BOOST_CHECK_THROW(s1.ConfirmSizesMatch(s2.Size()), std::runtime_error);
    }
    {
        Scalars s1(std::vector {Scalar{2}, Scalar{3}});
        Scalars s2(std::vector {Scalar{1}, Scalar{2}});
        BOOST_CHECK_NO_THROW(s1.ConfirmSizesMatch(s2.Size()));
    }
    {
        auto g = G1Point::GetBasePoint();
        G1Points gg(std::vector {g, g + g});
        G1Points hh(std::vector {g});
        BOOST_CHECK_THROW(gg.ConfirmSizesMatch(hh.Size()), std::runtime_error);
    }
    {
        auto g = G1Point::GetBasePoint();
        G1Points gg(std::vector {g, g + g});
        G1Points hh(std::vector {g, g * 3});
        BOOST_CHECK_NO_THROW(gg.ConfirmSizesMatch(hh.Size()));
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_pow_caret)
{
    // G1Points ^ Scalars -> G1Points
    {
        Scalars ss(std::vector {Scalar{2}, Scalar{3}});
        auto g = G1Point::GetBasePoint();
        G1Points gg(std::vector {g, g + g});
        auto hh = gg ^ ss;

        auto h1 = g * Scalar(2);
        auto h2 = (g + g) * Scalar(3);
        G1Points ii(std::vector<G1Point> {h1, h2});

        BOOST_CHECK(hh == ii);
    }
    // Scalars ^ Scalars -> G1Points (this doesn't compile)
    {
        // Scalars ss(std::vector {Scalar{2}, Scalar{3}});
        // Scalars tt(std::vector {Scalar{3}, Scalar{4}});
        // auto uu = ss ^ tt;
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_mul)
{
    // Scalars * Scalars -> Scalars
    {
        Scalars ss(std::vector {Scalar{2}, Scalar{3}});
        Scalars tt(std::vector {Scalar{3}, Scalar{4}});
        auto uu = ss * tt;

        Scalars vv(std::vector {Scalar{6}, Scalar{12}});
        BOOST_CHECK(uu == vv);
    }
    // G1Points * Scalars -> Scalars (this doesn't compile)
    {
        // auto g = G1Point::GetBasePoint();
        // G1Points gg(std::vector {g, g + g});
        // Scalars ss(std::vector {Scalar{2}, Scalar{3}});
        // auto hh = gg * ss;
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_add)
{
    {
        Scalars ss(std::vector {Scalar{2}, Scalar{3}});
        Scalars tt(std::vector {Scalar{3}, Scalar{4}});
        auto uu = ss + tt;

        Scalars vv(std::vector {Scalar{5}, Scalar{7}});
        BOOST_CHECK(uu == vv);
    }
    {
        auto g = G1Point::GetBasePoint();
        G1Points gg(std::vector {g, g + g});
        G1Points hh(std::vector {g + g, g});
        auto ii = gg + hh;

        G1Points jj(std::vector {g + g + g, g + g + g});
        BOOST_CHECK(ii == jj);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_eq)
{
    {
        Scalars ss(std::vector {Scalar{2}, Scalar{3}});
        Scalars tt(std::vector {Scalar{2}, Scalar{3}});
        auto b = ss == tt;
        BOOST_CHECK(b);
    }
    {
        auto g = G1Point::GetBasePoint();
        G1Points gg(std::vector {g, g + g});
        G1Points hh(std::vector {g, g + g});
        auto b = gg == hh;
        BOOST_CHECK(b);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_operator_ne)
{
    {
        Scalars ss(std::vector {Scalar{2}, Scalar{3}});
        Scalars tt(std::vector {Scalar{1}, Scalar{3}});
        auto b = ss != tt;
        BOOST_CHECK(b);
    }
    {
        auto g = G1Point::GetBasePoint();
        G1Points gg(std::vector {g, g + g});
        G1Points hh(std::vector {g * 10, g + g});
        auto b = gg != hh;
        BOOST_CHECK(b);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_from)
{
    Scalars ss(std::vector {Scalar{1}, Scalar{2}, Scalar{3}});
    {
        auto tt = ss.From(0);
        BOOST_CHECK(ss == tt);
    }
    {
        auto tt = ss.From(1);
        Scalars uu(std::vector {Scalar{2}, Scalar{3}});
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.From(2);
        Scalars uu(std::vector {Scalar{3}});
        BOOST_CHECK(tt == uu);
    }
    {
        BOOST_CHECK_THROW(ss.From(3), std::runtime_error);
    }

    auto g = G1Point::GetBasePoint();
    G1Points gg(std::vector {g, g + g, g + g + g});
    {
        auto hh = gg.From(0);
        BOOST_CHECK(gg == hh);
    }
    {
        auto hh = gg.From(1);
        G1Points ii(std::vector {g + g, g + g + g});
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.From(2);
        G1Points ii(std::vector {g + g + g});
        BOOST_CHECK(hh == ii);
    }
    {
        BOOST_CHECK_THROW(gg.From(3), std::runtime_error);
    }
}

BOOST_AUTO_TEST_CASE(test_elements_first_n_pow)
{
    Scalar k(3);
    auto pows = Scalars::FirstNPow(3, k);
    Scalar p1(1);
    Scalar p2(3);
    Scalar p3(9);
    BOOST_CHECK(pows.Size() == 3);
    BOOST_CHECK(pows[0] == p1);
    BOOST_CHECK(pows[1] == p2);
    BOOST_CHECK(pows[2] == p3);
}

BOOST_AUTO_TEST_CASE(test_elements_rand_vec)
{
    auto xs = Scalars::RandVec(3);
    BOOST_CHECK(xs.Size() == 3);
}

BOOST_AUTO_TEST_CASE(test_elements_to)
{
    Scalars ss(std::vector {Scalar{1}, Scalar{2}, Scalar{3}});
    {
        auto tt = ss.To(0);
        BOOST_CHECK(tt.Size() == 0);
    }
    {
        auto tt = ss.To(1);
        Scalars uu(std::vector {Scalar{1}});
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.To(2);
        Scalars uu(std::vector {Scalar{1}, Scalar{2}});
        BOOST_CHECK(tt == uu);
    }
    {
        auto tt = ss.To(3);
        BOOST_CHECK(tt == ss);
    }
    {
        BOOST_CHECK_THROW(ss.To(4), std::runtime_error);
    }

    auto g = G1Point::GetBasePoint();
    G1Points gg(std::vector {g, g + g, g + g + g});
    {
        auto hh = gg.To(0);
        BOOST_CHECK(hh.Size() == 0);
    }
    {
        auto hh = gg.To(1);
        G1Points ii(std::vector {g});
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.To(2);
        G1Points ii(std::vector {g, g + g});
        BOOST_CHECK(hh == ii);
    }
    {
        auto hh = gg.To(3);
        G1Points ii(std::vector {g, g + g, g + g+ g});
        BOOST_CHECK(hh == ii);
    }
    {
        BOOST_CHECK_THROW(gg.To(4), std::runtime_error);
    }
}


