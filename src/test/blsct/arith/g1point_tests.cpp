// Copyright (c) 2011-2021 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.
//
#include <test/util/setup_common.h>

#include <boost/test/unit_test.hpp>
#include <blsct/arith/g1point.h>
#include <blsct/arith/g1points.h>
#include <blsct/arith/scalar.h>
#include <blsct/arith/scalars.h>
#include <blsct/arith/mcl_initializer.h>
#include <algorithm>
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

    // cannot map empty vector to a point
    std::vector<uint8_t> empty_vec;
    BOOST_CHECK_THROW(G1Point::MapToG1(empty_vec), std::runtime_error);
}

BOOST_AUTO_TEST_CASE(test_g1point_hash_and_map)
{
    std::vector<uint8_t> vec{
        0x73, 0xed, 0xa7, 0x53, 0x29, 0x9d, 0x7d, 0x48, 0x33, 0x39, 
        0xd8, 0x08, 0x09, 0xa1, 0xd8, 0x05, 0x53, 0xbd, 0xa4, 0x02, 
        0xff, 0xfe, 0x5b, 0xfe, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 
        0xd8, 0x08, 0x09, 0xa1, 0xd8, 0x05, 0x53, 0xbd, 0xa4, 0x02, 
        0xff, 0xfe, 0x5b, 0xfe, 0xff, 0xff, 0xff, 0xff, 
    };

    // use separate hash function to hash vec
    mclBnFp h;
    if (mclBnFp_setHashOf(&h, &vec[0], vec.size()))
    {
        BOOST_FAIL("mclBnFp_setHashOf failed");
    }
    char buf[1024];
    size_t serSize = mclBnFp_serialize(buf, sizeof(buf), &h);
    if (serSize == 0)
    {
        BOOST_FAIL("mclBnFp_serialize failed");
    }
    std::vector<uint8_t> hashedVec(buf, buf + serSize);
    // mclBpFp_serialize serializes its value in big-endian

    // then get g1 point from the hash 
    auto p = G1Point::MapToG1(hashedVec, Endianness::Big);

    // next, directly get g1 point from the vec, using integrated hash function
    auto q = G1Point::HashAndMap(vec);
    BOOST_CHECK(p == q);
}

BOOST_AUTO_TEST_CASE(test_g1point_mulvec_scalar_g1point)
{
    auto p1 = G1Point::GetBasePoint();
    auto p2 = p1.Double();
    std::vector<G1Point> ps { p1, p2 };

    Scalar s1(2), s2(3);
    std::vector<Scalar> ss { s1, s2 };

    // p should be G^2 + (G+G)^3 = G^8
    auto p = G1Point::MulVec(ps, ss);
    auto q = G1Point::GetBasePoint() * 8;

    BOOST_CHECK(p == q);
}

BOOST_AUTO_TEST_CASE(test_g1point_mulvec_mcl)
{
    auto basePoint = G1Point::GetBasePoint();
    mclBnG1 p1, p2;
    p1 = basePoint.p;
    mclBnG1_dbl(&p2, &p1);
    std::vector<mclBnG1> ps { p1, p2 };

    mclBnFr s1, s2;
    mclBnFr_setInt(&s1, 2);
    mclBnFr_setInt(&s2, 3);
    std::vector<mclBnFr> ss { s1, s2 };

    // p should be G^2 + (G+G)^3 = G^8
    auto p = G1Point::MulVec(ps, ss);
    auto q = basePoint * 8;

    BOOST_CHECK(p == q);
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

// NOTE: this test checks that the library is capable of 
// performing required calculation
//
// prover and verifier know:
// g, h, c, P
//
// then prover convinces verifier that the prover knows a,b s.t.
// P = g^a h^b and c = <a,b>
//
BOOST_AUTO_TEST_CASE(test_g1point_simplest_inner_product)
{
    //////////
    // setup

    // g is a G1 point
    std::string gStr = "this is g";
    std::vector<uint8_t> gVec(gStr.begin(), gStr.end());
    auto g = G1Point::MapToG1(gVec);

    // h is a G1 point
    std::string hStr = "this is h";
    std::vector<uint8_t> hVec(hStr.begin(), hStr.end());
    auto h = G1Point::MapToG1(hVec);

    // a is Scalar vector
    Scalar a1(2), a2(3);
    std::vector<Scalar> aVec { a1, a2 };
    Scalars a(aVec);

    // b is Scalar vector
    Scalar b1(5), b2(7);
    std::vector<Scalar> bVec { b1, b2 };
    Scalars b(bVec);

    // P is G1 point
    auto P = (g ^ a) + (h ^ b);

    // c is Scalar
    auto c = (a * b).Sum(); 

    //////////
    // proof

    auto proofP = (g ^ a) + (h ^ b);
    auto proofC = (a * b).Sum(); 

    /////////////////
    // verification

    BOOST_CHECK(P == proofP);
    BOOST_CHECK(c == proofC);
}

void perform_logarithmic_inner_product_proof(
    size_t& n,
    G1Points& g, G1Points& h, 
    G1Point& u, G1Point& p,
    Scalars& a, Scalars& b
)
{
    
}

// NOTE: this test checks that the library is capable of 
// performing required calculation
//
// prover and verifier know:
// g, h, u, P
//
// for a given P, prover proves that it has vectors a, b s.t. 
// P = g^a h^b u^<a,b>
//
BOOST_AUTO_TEST_CASE(test_g1point_logrithmic_inner_product)
{
    //////////
    // setup

    // g is a G1 point
    std::string gStr = "this is g";
    std::vector<uint8_t> gVec(gStr.begin(), gStr.end());
    auto g = G1Point::MapToG1(gVec);

    // h is a G1 point
    std::string hStr = "this is h";
    std::vector<uint8_t> hVec(hStr.begin(), hStr.end());
    auto h = G1Point::MapToG1(hVec);

    // u is a G1 point
    std::string uStr = "this is u";
    std::vector<uint8_t> uVec(uStr.begin(), uStr.end());
    auto u = G1Point::MapToG1(uVec);

    // a is Scalar vector
    Scalar a1(2), a2(3);
    std::vector<Scalar> aVec { a1, a2 };
    Scalars a(aVec);

    // b is Scalar vector
    Scalar b1(5), b2(7);
    std::vector<Scalar> bVec { b1, b2 };
    Scalars b(bVec);

    //////////
    // proof
}

/*
  pub fn perform_improved_inner_product_argument(&self,
    n: usize,
    g: &EcPoints<'a>, h: &EcPoints<'a>,
    u: &EcPoint1<'a>, p: &EcPoint1<'a>,  
    a: &FieldElems, b: &FieldElems, 
  ) -> bool {
    if n == 1 {
      // prover sends a,b to verifier

      // verifier computers c = a*b
      let c = &a[0] * &b[0];

      // verifier accepts if P = g^a h^b u^c holds
      let ga = &g[0] * &a[0];
      let hb = &h[0] * &b[0];
      let uc = u * &c;

      let rhs = self.vector_add(&[&ga , &hb, &uc]);
      p == &rhs 

    } else {
      // prover computes L,R whose length is n/2
      let nn = n / 2;
      let cL = self.field_elem_mul(&a.to(..nn), &b.from(nn..)).sum();
      let cR = self.field_elem_mul(&a.from(nn..), &b.to(..nn)).sum();
      let L = self.vector_add(&vec![
        &(&g.from(nn..) * &a.to(..nn)).sum(),
        &(&h.to(..nn) * &b.from(nn..)).sum(),
        &self.scalar_mul(u, &cL),
      ]);
      let R = self.vector_add(&vec![
        &(&g.to(..nn) * &a.from(nn..)).sum(),
        &(&h.from(nn..) * &b.to(..nn)).sum(),
        &(u * &cR),
      ]);

      // prover passes L,R to verifier

      // verifier chooses x in Z^*_p and sends to prover
      let x = self.f.rand_elem();

      // both prover and verifier compute gg,hh,PP
      let gg = &(&g.to(..nn) * &x.inv()) * &(&g.from(nn..) * &x);
      let hh = &(&h.to(..nn) * &x) * &(&h.from(nn..) * &x.inv());
      
      let pp = self.vector_add(&vec![
        &(&L * &x.sq()),
        p,
        &(&R * &x.sq().inv()),
      ]);

      // prover computes aa, bb
      let aa = &(&a.to(..nn) * &x) + &(&a.from(nn..) * &x.inv());
      let bb = &(&b.to(..nn) * &x.inv()) + &(&b.from(nn..) * &x);
      self.perform_improved_inner_product_argument(
        nn, &gg, &hh, u, &pp, &aa, &bb)
    }
  }
*/