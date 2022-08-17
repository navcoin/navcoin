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

struct IntegrationTests {
    IntegrationTests() 
    {
        MclInitializer::Init();
        G1Point::Init();
    }
};

BOOST_TEST_GLOBAL_FIXTURE(IntegrationTests);

BOOST_AUTO_TEST_CASE(test_integration_invert_zero)
{
    auto x = Scalar::Rand(true);
    Scalar zero(0);
    BOOST_CHECK(x.Pow(zero) == x.Pow(zero.Invert()));
}

// gg^z == gg^(ones * z)
BOOST_AUTO_TEST_CASE(test_integration_gg_ones_times_z)
{
    auto z = Scalar::Rand(true);
    auto gg = G1Points(std::vector<G1Point> {
        G1Point::MapToG1("g1"),
        G1Point::MapToG1("g2")
    });
    auto r1 = gg * z;

    Scalar one(1);
    auto ones = Scalars::RepeatN(gg.Size(), one);
    auto r2 = gg * (ones * z);

    BOOST_CHECK(r1 == r2);
}

BOOST_AUTO_TEST_CASE(test_integration_offset_by_negation)
{
    {
        Scalar z(100);
        Scalar basis(12345);

        auto r1 = basis - z;
        auto r2 = basis + z.Negate();
        
        BOOST_CHECK(r1 == r2);
    }
    {
        Scalar z(100);
        Scalar basis(12345);
        auto g = G1Point::MapToG1("g");

        auto r1 = g * (basis - z);
        auto r2 = g * (basis + z.Negate());
        
        BOOST_CHECK(r1 == r2);
    }
}

// (66), (67) of the range proof excluding (h') part  
BOOST_AUTO_TEST_CASE(test_integration_range_proof_66_67_excl_h_prime)
{
    auto n = 2;
    Scalar one(1);
    auto ones = Scalars::RepeatN(n, one);
    auto z = Scalar::Rand(true);

    auto alpha = Scalar::Rand(true);
    auto rho = Scalar::Rand(true);
    auto x = Scalar::Rand(true);
    auto mu = alpha + rho * x; 

    auto gg = G1Points(std::vector<G1Point> {
        G1Point::MapToG1("g1"),
        G1Point::MapToG1("g2")
    });
    auto h = G1Point::MapToG1("h");

    Scalars aL(std::vector<Scalar> {
        Scalar {1}, 
        Scalar {1}
    });
    auto sL = Scalars::RandVec(n);
    auto ll = aL - (ones * z) + (sL * x);

    auto hmu_ggl = (h * mu) + (gg * ll).Sum();

    auto A = h * alpha + (gg * aL).Sum();
    auto S = h * rho + (gg * sL).Sum();
    auto P = A + (S * x) + (gg * z.Negate()).Sum();

    BOOST_CHECK(P == hmu_ggl);
}

BOOST_AUTO_TEST_CASE(test_integration_rebasing_base_point)
{
    auto n = 2;

    Scalar one(1);
    auto oneN = Scalars::RepeatN(n, one);
    Scalar two(n); 
    auto twoN = Scalars::FirstNPow(n, two);

    auto y = Scalar::Rand(true);
    auto z = Scalar::Rand(true);
    auto yN = Scalars::FirstNPow(n, y);
    auto hh = G1Points(std::vector<G1Point> {
        G1Point::MapToG1("h1"),
        G1Point::MapToG1("h2")
    });
    {
        auto hhp = hh * y;
        auto lhs = hhp * two;
        auto rhs = hh * y * two;
        BOOST_CHECK(lhs == rhs);
    }
    {
        auto hhp = hh * y.Negate();
        auto lhs = hhp * two;
        auto rhs = hh * y.Negate() * two;
        BOOST_CHECK(lhs == rhs);
    }
    {
        auto hhp = G1Points(std::vector<G1Point> {
            hh[0],
            hh[1] * y.Invert()
        });
        auto yPowsInv = Scalars::FirstNPow(n, y.Invert());
        auto lhs = hhp * (yN * z + twoN * z.Square());
        auto rhs = hh * (oneN * z + twoN * z.Square() * yPowsInv);
        BOOST_CHECK(lhs == rhs);
    }
}

BOOST_AUTO_TEST_CASE(test_integration_range_proof_66_67_only_h_prime)
{
    auto n = 2;

    Scalar two(2); 
    auto twoN = Scalars::FirstNPow(n, two);
    Scalar one(1);
    auto oneN = Scalars::RepeatN(n, one);

    auto x = Scalar::Rand(true);
    auto y = Scalar::Rand(true);
    auto z = Scalar::Rand(true);
    auto yN = Scalars::FirstNPow(n, y);

    Scalars aR(std::vector<Scalar> {
        Scalar {1}, 
        Scalar {1}
    });
    auto sR = Scalars::RandVec(n);
    auto zs = oneN * z; 
    auto hh = G1Points(std::vector<G1Point> {
        G1Point::MapToG1("h1"),
        G1Point::MapToG1("h2")
    });
    auto A = hh * aR;
    auto S = hh * sR;

    auto hhp = hh * Scalars::FirstNPow(n, y.Invert());

    auto P = A + S * x + hhp * (yN * z + twoN * z.Square());
    auto rr = yN * (aR + zs + sR * x) + (twoN * z.Square()); 
    auto hhprr = hhp * rr;

    BOOST_CHECK(P == hhprr);
}

BOOST_AUTO_TEST_CASE(test_integration_range_proof_65_h_part_only)
{
    auto gamma = Scalar::Rand();
    auto x = Scalar::Rand(true);
    auto tau1 = Scalar::Rand(true);
    auto tau2 = Scalar::Rand(true);

    // rhs
    auto h = G1Point::MapToG1("h");
    auto V = h * gamma;
    auto z = Scalar::Rand(true);
    auto T1 = h * tau1; 
    auto T2 = h * tau2; 
    auto rhs =  V * z.Square() + T1 * x + T2 * x.Square();
    
    // lhs
    auto tauX = tau2 * x.Square() + tau1 * x + z.Square() * gamma;
    auto lhs = h * tauX;

    BOOST_CHECK(lhs == rhs);
}

BOOST_AUTO_TEST_CASE(test_integration_range_proof_65_g_part_only_excl_ts)
{
    auto n = 2;

    auto y = Scalar::Rand(true);
    auto z = Scalar::Rand(true);
    auto upsilon = 2;

    Scalar one(1);
    Scalar two(2);
    auto oneN = Scalars::FirstNPow(n, one);
    auto twoN = Scalars::FirstNPow(n, two);
    auto yN = Scalars::FirstNPow(n, y);
    auto zs = Scalars::RepeatN(n, z);

    Scalars aL(std::vector<Scalar> {
        Scalar {0}, 
        Scalar {1}
    });
    auto aR = aL - oneN;
    auto sL = Scalars::RandVec(n);
    auto sR = Scalars::RandVec(n);

    auto l = aL - oneN * z;  // (39)
    auto r = yN * (aR + oneN * z) + twoN * z.Square();  // (39)
    auto tHat = (l * r).Sum();

    auto l0 = aL - oneN * z;
    auto r0 = yN * (aR + oneN * z) + twoN * z.Square();
    auto lrEquiv = (l0 * r0).Sum();
    BOOST_CHECK(tHat == lrEquiv);

    auto g = G1Point::MapToG1("g");
    
    auto V = g * upsilon;
    auto deltaYz = 
        ((z - z.Square()) * (oneN * yN).Sum())
        - (z.Cube() * (oneN * twoN).Sum());

    // lhs
    auto lhs = g * tHat;

    // rhs
    auto rhs = V * z.Square() + g * deltaYz;

    BOOST_CHECK(lhs == rhs);
}

BOOST_AUTO_TEST_CASE(test_integration_range_proof_65_g_part_ts_only)
{
    auto n = 2;

    auto x = Scalar::Rand(true);
    auto y = Scalar::Rand(true);
    auto z = Scalar::Rand(true);

    Scalar one(1);
    Scalar two(2);
    auto oneN = Scalars::FirstNPow(n, one);
    auto twoN = Scalars::FirstNPow(n, two);
    auto yN = Scalars::FirstNPow(n, y);
    auto zs = Scalars::RepeatN(n, z);

    Scalars aL(std::vector<Scalar> {
        Scalar {0}, 
        Scalar {1}
    });
    auto aR = aL - oneN;
    auto sL = Scalars::RandVec(n);
    auto sR = Scalars::RandVec(n);

    auto l1 = sL;
    auto r0 = yN * (aR + oneN * z) + twoN * z.Square();
    auto r1 = yN * sR;

    auto tHat = (l1 * r0).Sum() * x + (l1 * r1).Sum() * x.Square();

    // t(x) = <l0, r0> + <l1, r0> * x + <l1, r1> * x^2
    auto t1 = (l1 * r0).Sum();
    auto t2 = (l1 * r1).Sum();

    auto g = G1Point::MapToG1("g");
    
    auto T1 = g * t1; 
    auto T2 = g * t2; 

    // lhs
    auto lhs = g * tHat;

    // rhs
    auto rhs = T1 * x + T2 * x.Square();

    BOOST_CHECK(lhs == rhs);
}

BOOST_AUTO_TEST_CASE(test_integration_range_proof_65_g_part_only)
{
    auto n = 2;

    auto x = Scalar::Rand(true);
    auto y = Scalar::Rand(true);
    auto z = Scalar::Rand(true);
    auto upsilon = 2;

    Scalar one(1);
    Scalar two(2);
    auto oneN = Scalars::FirstNPow(n, one);
    auto twoN = Scalars::FirstNPow(n, two);
    auto yN = Scalars::FirstNPow(n, y);
    auto zs = Scalars::RepeatN(n, z);

    Scalars aL(std::vector<Scalar> {
        Scalar {0}, 
        Scalar {1}
    });
    auto aR = aL - oneN;
    auto sL = Scalars::RandVec(n);
    auto sR = Scalars::RandVec(n);

    auto l0 = (aL - oneN * z);
    auto l1 = sL;
    auto r0 = yN * (aR + oneN * z) + twoN * z.Square();
    auto r1 = yN * sR;

    // lhs

    // tHat = <l,r> = t(x) = <l0, r0> + <l1, r0> * x + <l1, r1> * x^2
    auto t0 = (l0 * r0).Sum();
    auto t1 = (l1 * r0).Sum();
    auto t2 = (l1 * r1).Sum();
    auto tHat = t0 + t1 * x + t2 * x.Square();

    auto g = G1Point::MapToG1("g");
    
    auto lhs = g * tHat;

    // rhs
    auto T1 = g * t1; 
    auto T2 = g * t2; 

    auto V = g * upsilon;
    auto deltaYz = 
        ((z - z.Square()) * (oneN * yN).Sum())
        - (z.Cube() * (oneN * twoN).Sum());

    auto rhs = V * z.Square() + g * deltaYz + T1 * x + T2 * x.Square();

    BOOST_CHECK(lhs == rhs);
}

// BOOST_AUTO_TEST_CASE(test_integration_range_proof_play_ground)
// {
//     auto n = 2;

//     auto x = Scalar::Rand(true);
//     auto y = Scalar::Rand(true);
//     auto z = Scalar::Rand(true);
//     auto upsilon = 2;

//     Scalar one(1);
//     Scalar two(2);
//     auto oneN = Scalars::FirstNPow(n, one);
//     auto twoN = Scalars::FirstNPow(n, two);
//     auto yN = Scalars::FirstNPow(n, y);
//     auto zs = Scalars::RepeatN(n, z);

//     Scalars aL(std::vector<Scalar> {
//         Scalar {0}, 
//         Scalar {1}
//     });
//     auto aR = aL - oneN;
//     auto sL = Scalars::RandVec(n);
//     auto sR = Scalars::RandVec(n);

//     auto l0 = (aL - oneN * z);
//     auto l1 = sL;
//     auto r0 = yN * (aR + oneN * z) + twoN * z.Square();
//     auto r1 = yN * sR;

//     // lhs

//     // tHat = <l,r> = t(x) = <l0, r0> + <l1, r0> * x + <l1, r1> * x^2
//     auto t0 = (l0 * r0).Sum();
//     auto t1 = (l1 * r0).Sum() + (l0 * r1).Sum();
//     auto t2 = (l1 * r1).Sum();

//     auto tHat = t0 + t1 * x + t2 * x.Square();

//     auto g = G1Point::MapToG1("g");
    
//     auto lhs = g * tHat;

//     auto l = (aL - oneN * z + sL * x);
//     auto r = yN * (aR + oneN * z + sR * x) + twoN * z.Square();
//     auto lr = (l * r).Sum();
//     BOOST_CHECK(tHat == lr);

//     // auto l = (aL - oneN * z) + sL * x;
//     // auto r = yN * (aR + oneN * z + sR * x) + twoN * z.Square();

//     // (68)
//     // auto rhs_68 = (l * r).Sum();
//     // BOOST_CHECK(tHat == rhs_68);
// }

void PerformRangeProof(
    size_t n, G1Point V,
    Scalar upsilon, Scalar gamma,
    G1Point g, G1Point h, 
    G1Points gg, G1Points hh,
    Scalars aL
)
{
    // on input upsilon and gamma, prover computes
    Scalar one(1);
    Scalar two(2);
    auto oneN = Scalars::FirstNPow(n, one);
    auto twoN = Scalars::FirstNPow(n, two);

    auto aR = aL - oneN;
    auto alpha = Scalar::Rand();
    auto A = (h * alpha) + (gg * aL).Sum() + (hh * aR).Sum();

    auto sL = Scalars::RandVec(n);
    auto sR = Scalars::RandVec(n);
    auto rho = Scalar::Rand();
    auto S = (h * rho) + (gg * sL).Sum() + (hh * sR).Sum();

    // prover sends A,S to verifier

    // verifier selects challenge points y,z and send to prover
    auto y = Scalar::Rand(true);
    auto z = Scalar::Rand(true);

    // define vector ploynomials l(x), r(x) and t(x)
    // t(x) = <l(x),r(x)> = <l0, r0> + (<l1, r0> + <l0, r1>) * x + <l1, r1> * x^2
    auto yN = Scalars::FirstNPow(n, y);  
    auto zs = Scalars::RepeatN(n, z);
    auto l0 = (aL - oneN * z);
    auto l1 = sL;
    auto r0 = yN * (aR + oneN * z) + twoN * z.Square();
    auto r1 = yN * sR;

    auto t0 = (l0 * r0).Sum();
    auto t1 = (l1 * r0).Sum() + (l0 * r1).Sum();
    auto t2 = (l1 * r1).Sum();

    // prover computes
    auto tau1 = Scalar::Rand(true);
    auto tau2 = Scalar::Rand(true);
    auto T1 = g * t1 + h * tau1;
    auto T2 = g * t2 + h * tau2;

    // prover sends T1,T2 to verifier

    // verifier select random challenge x and selnd to prover
    auto x = Scalar::Rand(true);

    // prover computes

    // tHat = <l,r> = t(x)
    auto tHat = t0 + t1 * x + t2 * x.Square();
    auto tauX = tau2 * x.Square() + tau1 * x + z.Square() * gamma;
    auto mu = alpha + rho * x;

    // prover sends l,r,tHat,tauX,mu to verifier

    // (64)
    auto hhp = hh * Scalars::FirstNPow(n, y.Invert());
    
    // (65)
    auto deltaYz = 
        ((z - z.Square()) * (oneN * yN).Sum())
        - (z.Cube() * (oneN * twoN).Sum());

    auto lhs_65 = g * tHat + h * tauX;
    auto rhs_65 = V * z.Square() + g * deltaYz + T1 * x + T2 * x.Square();
    BOOST_CHECK(lhs_65 == rhs_65);
    
    // (66), (67)
    auto l = (aL - oneN * z) + sL * x;
    auto r = yN * (aR + oneN * z + sR * x) + twoN * z.Square();

    auto lhs_66_67 = 
        A 
        + (S * x) 
        - (gg * (oneN * z)).Sum() 
        + (hhp * (yN * z + twoN * z.Square())).Sum();
    auto rhs_66_67 = h * mu + (gg * l).Sum() + (hhp * r).Sum();
    BOOST_CHECK(lhs_66_67 == rhs_66_67);

    // (68)
    auto rhs_68 = (l * r).Sum();
    BOOST_CHECK(tHat == rhs_68);
}

BOOST_AUTO_TEST_CASE(test_integration_range_proof)
{
    auto gamma = Scalar::Rand();
    Scalars aL(std::vector<Scalar> {
        Scalar {1}, 
        Scalar {0},
        Scalar {0},
        Scalar {1}
    });
    size_t n = aL.Size();
    auto upsilon = 9;

    auto g = G1Point::MapToG1("g");
    auto h = G1Point::MapToG1("h");

    auto gg = G1Points(std::vector<G1Point> {
        G1Point::MapToG1("g1"),
        G1Point::MapToG1("g2"),
        G1Point::MapToG1("g3"),
        G1Point::MapToG1("g4")
    });
    auto hh = G1Points(std::vector<G1Point> {
        G1Point::MapToG1("h1"),
        G1Point::MapToG1("h2"),
        G1Point::MapToG1("h3"),
        G1Point::MapToG1("h4")
    });

    auto V = h * gamma + g * upsilon;

    PerformRangeProof(
        n, V, 
        upsilon, gamma,
        g, h, 
        gg, hh,
        aL
    );
}

// NOTE: this test checks that the library is capable of 
// performing required types of calculations
//
// prover and verifier know:
// g, h, c, P
//
// then prover convinces verifier that the prover knows a,b s.t.
// P = g^a h^b and c = <a,b>
//
BOOST_AUTO_TEST_CASE(test_integration_simplest_inner_product)
{
    //////////
    // setup

    auto g = G1Point::MapToG1("g");
    auto h = G1Point::MapToG1("h");

    Scalars a(std::vector<Scalar> { Scalar {2}, Scalar {3} });
    Scalars b(std::vector<Scalar> { Scalar {5}, Scalar {7} });

    auto P = (g * a.Sum()) + (h * b.Sum());
    auto c = (a * b).Sum(); 

    //////////
    // proof

    auto proofP = (g * a.Sum()) + (h * b.Sum());
    auto proofC = (a * b).Sum(); 

    /////////////////
    // verification

    BOOST_CHECK(P == proofP);
    BOOST_CHECK(c == proofC);
}

bool PerformImprovedInnerProductProof(
    const size_t& n,
    const G1Points& g, const G1Points& h, 
    const G1Point& u, const G1Point& P,
    const Scalars& a, const Scalars& b
)
{
    if (n == 1)
    {
        auto c = (a * b).Sum();
        return P == (g * a).Sum() + (h * b).Sum() + u * c;
    }
    else
    {
        auto nn = n / 2;

        auto cL = (a.To(nn) * b.From(nn)).Sum();
        auto cR = (a.From(nn) * b.To(nn)).Sum();

        auto L = (g.From(nn) * a.To(nn)).Sum() + (h.To(nn) * b.From(nn)).Sum() + u * cL;
        auto R = (g.To(nn) * a.From(nn)).Sum() + (h.From(nn) * b.To(nn)).Sum() + u * cR;

        auto x = Scalar::Rand(true);

        auto gg = (g.To(nn) * x.Invert()) + (g.From(nn) * x);  // gg in G^nn
        auto hh = (h.To(nn) * x) + (h.From(nn) * x.Invert());  // hh in G^nn

        auto PP = L * x.Square() + P + (R * x.Square().Invert());

        auto aa = a.To(nn) * x + a.From(nn) * x.Invert();  // aa in Z^nn
        auto bb = b.To(nn) * x.Invert() + b.From(nn) * x;  // bb in Z^nn

        return PerformImprovedInnerProductProof(nn, gg, hh, u, PP, aa, bb);
    }
}

// NOTE: this test checks that the library is capable of 
// performing required types of calculations. 
//
// prover and verifier know:
// g, h, u, P
//
// for a given P, prover proves that it has vectors a, b s.t. 
// P = g^a h^b u^<a,b>
//
BOOST_AUTO_TEST_CASE(test_integration_improved_inner_product)
{
    //////////
    // setup

    auto g = G1Points(std::vector {
        G1Point::MapToG1("g1"),
        G1Point::MapToG1("g2")
    });
    auto h = G1Points(std::vector {
        G1Point::MapToG1("h1"),
        G1Point::MapToG1("h2")
    });
    auto u = G1Point::MapToG1("u");

    // not equal to the actual P
    auto P = G1Point::GetBasePoint();

    // a, b are Scalar vectors
    Scalars a(std::vector<Scalar> { Scalar {2}, Scalar {3} });
    Scalars b(std::vector<Scalar> { Scalar {5}, Scalar {7} });

    size_t n = 2;

    //////////
    // proof
    auto result = PerformImprovedInnerProductProof(
        n,
        g, h, 
        u, P,
        a, b
    );
    // 
    BOOST_CHECK_EQUAL(result, false);  // since P is bad, the result should be false
}
