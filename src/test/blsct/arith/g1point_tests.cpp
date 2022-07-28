// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
//
#include <test/util/setup_common.h>

#include <boost/test/unit_test.hpp>
#include <blsct/arith/g1point.h>
#include <blsct/arith/mcl_initializer.h>
#include <set>
#include <streams.h>

struct G1PointTests {
    G1PointTests() 
    { 
        G1Point::Init();
    }
};

BOOST_TEST_GLOBAL_FIXTURE(G1PointTests);

BOOST_AUTO_TEST_CASE(test_g1point_constructors)
{
    // default
    {
        G1Point p;
        BOOST_CHECK(p.IsUnity() == true);
    }

    // vector<uint8_t>
    {
        auto G = G1Point::GetBasePoint();
        auto vch = G.GetVch();
        G1Point p(vch);
        BOOST_CHECK(G == p);
    }

    // G1Point
    {
        auto G = G1Point::GetBasePoint();
        G1Point p(G);
        BOOST_CHECK(G == p);
    }

    // mclBnG1
    {
        auto G = G1Point::GetBasePoint();
        G1Point p(G.p);
        BOOST_CHECK(G == p);
    }

    // uint256
    {
        G1Point p(uint256::ONE);
        auto s = p.GetString();
        BOOST_CHECK_EQUAL(s, "1 f6192bef86951fea27b115b4645cf5cf83bf067cf322647a1d1276c3d05208cb97cf72c5a0749fcfe631cf3fa246b9c 1764f91223eb414b6df18cc317537c17e242f678995b9894ef0d419725748a92ba0f5f58ecf5d403fae39cb41cc4e151");
    }
}

BOOST_AUTO_TEST_CASE(test_g1point_assign_op)
{
    auto G = G1Point::GetBasePoint();
    auto b = G + G;
    auto c = b;
    BOOST_CHECK(b == c);
}

BOOST_AUTO_TEST_CASE(test_g1point_point_add_sub)
{
    auto G = G1Point::GetBasePoint();
    auto p = G + G;
    auto q = p - G;
    BOOST_CHECK(q == G);
}

BOOST_AUTO_TEST_CASE(test_g1point_point_mul)
{
    auto G = G1Point::GetBasePoint();
    auto p = G + G + G;
    auto q = G * 3;
    BOOST_CHECK(p == q);
}

BOOST_AUTO_TEST_CASE(test_g1point_point_equal_or_not_equal)
{
    auto G = G1Point::GetBasePoint();
    BOOST_CHECK(G == G);

    auto p = G + G;
    BOOST_CHECK(G != p);
}

BOOST_AUTO_TEST_CASE(test_g1point_double)
{
    auto G = G1Point::GetBasePoint();
    auto G2 = G + G;
    auto GD = G.Double();
    BOOST_CHECK(G2 == GD);

    auto G4 = G2 + G2;
    auto GDD = GD.Double();
    BOOST_CHECK(G4 == GDD);
}

BOOST_AUTO_TEST_CASE(test_g1point_get_base_point)
{
    auto G = G1Point::GetBasePoint();
    char gAct[1024];
    if (mclBnG1_getStr(gAct, sizeof(gAct), &G.p, 10) == 0)
    {
        BOOST_FAIL("Failed to get string representation of G");
    }
    const char* gExp = "1 3685416753713387016781088315183077757961620795782546409894578378688607592378376318836054947676345821548104185464507 1339506544944476473020471379941921221584933875938349620426543736416511423956333506472724655353366534992391756441569";
    BOOST_CHECK_EQUAL(gExp, gAct);
}

BOOST_AUTO_TEST_CASE(test_g1point_map_to_g1)
{
    // differnt numbers should be mapped to different points 
    std::set<std::string> xs;
    const size_t numXs = 1000;
    for(size_t i=0; i<numXs; ++i)
    {
        auto s = std::to_string(i);
        std::vector<unsigned char> v(s.begin(), s.end());
        auto p = G1Point::MapToG1(v);
        xs.insert(p.GetString());
    }
    BOOST_CHECK_EQUAL(xs.size(), numXs);

    // just check if MapToG1 accepts a large number
    std::vector<uint8_t> num48Byte{

        0x73, 0xed, 0xa7, 0x53, 0x29, 0x9d, 0x7d, 0x48, 0x33, 0x39, 
        0xd8, 0x08, 0x09, 0xa1, 0xd8, 0x05, 0x53, 0xbd, 0xa4, 0x02, 
        0xff, 0xfe, 0x5b, 0xfe, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 
        0xd8, 0x08, 0x09, 0xa1, 0xd8, 0x05, 0x53, 0xbd, 0xa4, 0x02, 
        0xff, 0xfe, 0x5b, 0xfe, 0xff, 0xff, 0xff, 0xff, 
    };
    G1Point::MapToG1(num48Byte);
}

BOOST_AUTO_TEST_CASE(test_g1point_hash_and_map)
{
}

BOOST_AUTO_TEST_CASE(test_g1point_mulvec_scalar)
{
}

BOOST_AUTO_TEST_CASE(test_g1point_mulvec_mclbnfr)
{
}

BOOST_AUTO_TEST_CASE(test_g1point_rand)
{
    unsigned int numTries = 1000;
    unsigned int numDups = 0; 
    auto x = G1Point::Rand();
    for(size_t i=0; i<numTries; ++i)
    {
        auto y = G1Point::Rand();
        if (x == y) ++numDups;
    }
    auto dupRatio = numDups / (float) numTries;
    BOOST_CHECK(dupRatio < 0.001);
}

BOOST_AUTO_TEST_CASE(test_g1point_is_unity)
{
    auto G = G1Point::GetBasePoint();
    BOOST_CHECK_EQUAL(G.IsUnity(), false);

    auto p = G - G;
    BOOST_CHECK_EQUAL(p.IsUnity(), true);
}

BOOST_AUTO_TEST_CASE(test_g1point_get_set_vch)
{
    G1Point p(uint256::ONE);
    auto vec = p.GetVch();

    G1Point q;
    BOOST_CHECK(p != q);
    
    q.SetVch(vec);
    BOOST_CHECK(p == q);
}

BOOST_AUTO_TEST_CASE(test_g1point_get_string)
{
    auto G = G1Point::GetBasePoint();
    const char* gExp = "1 3685416753713387016781088315183077757961620795782546409894578378688607592378376318836054947676345821548104185464507 1339506544944476473020471379941921221584933875938349620426543736416511423956333506472724655353366534992391756441569";
    auto gAct = G.GetString(10);
    BOOST_CHECK(gExp == gAct);
}

BOOST_AUTO_TEST_CASE(test_g1point_get_serialize_size)
{
    G1Point p(uint256::ONE);
    auto serSize = p.GetSerializeSize();
    BOOST_CHECK_EQUAL(serSize, 49);
}

BOOST_AUTO_TEST_CASE(test_g1point_serialize_unserialize)
{
    G1Point p(uint256::ONE);
    CDataStream st(0, 0);
    p.Serialize(st);
    BOOST_CHECK_EQUAL(st.size(), 49);

    G1Point q;
    BOOST_CHECK(p != q);
    
    q.Unserialize(st);
    BOOST_CHECK(p == q);
}

// returns true if prover can convince that it known a, b s.t.
// P = g^a h^b and c = <a, b> (a)
// P is a binding vector commitment to a,b
template<int N>
bool CalcSimplestInnerProductArgument(
    mclBnFr (&a)[N], mclBnFr (&b)[N], mclBnG1 (&g)[N], mclBnG1 (&h)[N], 
    mclBnFr& c, mclBnG1& P)
{
    // simplest proof system
    // 1. prover sends a,b to verifier
    // 2. verifier checks if P = g^a h^b and c = <a, b> holds

    // P = g^a h^b
    mclBnG1 gIp;
    mclBnG1_mulVec(&gIp, g, a, N);
    mclBnG1 hIp;
    mclBnG1_mulVec(&hIp, h, b, N);
    mclBnG1 PAct;
    mclBnG1_add(&PAct, &gIp, &hIp);
    bool pMatched = mclBnG1_isEqual(&PAct, &P);

    // c = <a, b>
    mclBnFr cAct;
    mclBnFr_clear(&cAct);
    for(size_t i = 0; i < N; ++i)
    {
        mclBnFr ip;
        mclBnFr_mul(&ip, &a[i], &b[i]);
        mclBnFr_add(&cAct, &cAct, &ip);
    }
    bool cMatched = mclBnFr_isEqual(&cAct, &c);

    return pMatched && cMatched;
}

// TODO use Scalar and G1Point
BOOST_AUTO_TEST_CASE(test_g1point_simplest_inner_product)
{
    char buf[1024];

    // Setup
    const size_t n = 2;

    // g[n]
    mclBnG1 g[n]; 
    for(size_t i = 0; i < n; ++i)
    {
        mclBnFr r;
        mclBnFr_setByCSPRNG(&r);
        mclBnFr_getStr(buf, sizeof(buf), &r, 16);
        mclBnG1_hashAndMapTo(&g[i], buf, sizeof(buf));
    }

    // h[n]
    mclBnG1 h[n];
    for(size_t i = 0; i < n; ++i)
    {
        mclBnFr r;
        mclBnFr_setByCSPRNG(&r);
        mclBnFr_getStr(buf, sizeof(buf), &r, 16);
        mclBnG1_hashAndMapTo(&h[i], buf, sizeof(buf));
    }

    // a[n]
    mclBnFr a[n]; 
    for(size_t i = 0; i < n; ++i)
    {
        mclBnFr_setByCSPRNG(&a[i]);
    }

    // b[n]
    mclBnFr b[n]; 
    for(size_t i = 0; i < n; ++i)
    {
        mclBnFr_setByCSPRNG(&b[i]);
    }

    // c = <a, b>
    mclBnFr c;
    mclBnFr_clear(&c);
    for(size_t i = 0; i < n; ++i)
    {
        mclBnFr ip;
        mclBnFr_mul(&ip, &a[i], &b[i]);
        mclBnFr_add(&c, &c, &ip);
    }

    // P = g^a h^b
    mclBnG1 gIp;
    mclBnG1_mulVec(&gIp, g, a, n);
    mclBnG1 hIp;
    mclBnG1_mulVec(&hIp, h, b, n);
    mclBnG1 P;
    mclBnG1_add(&P, &gIp, &hIp);

    bool result = CalcSimplestInnerProductArgument<n>(a, b, g, h, c, P);
    BOOST_CHECK_EQUAL(result, true);
}

// template<int N>
// bool CalcImprovedInnerProductArgument(
//     mclBnG1 (&g)[N], mclBnG1 (&h)[N], 
//     mclBnG1& u, mclBnG1 &P,
//     mclBnFr (&a)[N], mclBnFr (&b)[N])
// {
//     if (n == 1)
//     {
//         // Prover passes a,b to Verifier
//         // Verifier computes c=a*b and returns if P=g^a h^b u^c holds
//         return true;
//     }
//     else 
//     {
//         // Prover computes nn, cL, cR, L, R
//         int nn = n / 2;
//         mclBnFr cL, cR;
//         mclBnG1 L, R;    

//         // Prover passes L, R to Verifier

//         // Verifier get random x and send it to Prover
//         mclBnFr x;
//         mclBnFr_setByCSPRNG(&x);

//         // Prover and Verifier compute gg, hh, PP

//         // Prover computes aa, bb

//         return CalcImprovedInnerProductArgument<nn>(gg, hh, PP, u, aa, bb);
//     }
// }

// template<int N>
// bool CalcImprovedInnerProductArgument(
//     mclBnG1 (&g)[N], mclBnG1 (&h)[N], 
//     mclBnG1& u, mclBnG1 &P,
//     mclBnFr (&a)[N], mclBnFr (&b)[N])
// {
//     // Prover's input:
//     // g, h, u, P, a, b
    
//     // Verifier's input:
//     // g, h, u, P

//     return CalcImprovedInnerProductArgument<N>(g, h, u, P, a, b);
// }
