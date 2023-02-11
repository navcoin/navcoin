// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H
#define NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H

#include <blsct/arith/elements.h>
#include <span.h>
#include <streams.h>

template <typename T>
struct RangeProof {
    using Point = typename T::Point;
    using Scalar = typename T::Scalar;
    using Points = Elements<Point>;

    // intermediate values used to derive random values later
    Points Vs;
    Point A;
    Point S;
    Point T1;
    Point T2;
    Scalar mu;
    Scalar tau_x;
    Points Ls;
    Points Rs;

    // proof results
    Scalar t_hat; // inner product of l and r
    Scalar a;     // result of inner product argument
    Scalar b;     // result of inner product argument
};

template <typename T>
std::vector<uint8_t> SerializeRangeProof(const RangeProof<T>& proof)
{
    CDataStream s(0, 0);

    s << proof.Vs;
    s << proof.Ls;
    s << proof.Rs;
    s << proof.A.GetVch();
    s << proof.S.GetVch();
    s << proof.T1.GetVch();
    s << proof.T2.GetVch();
    s << proof.tau_x.GetVch();
    s << proof.mu.GetVch();
    s << proof.a.GetVch();
    s << proof.b.GetVch();
    s << proof.t_hat.GetVch();

    Span spanStream(s);
    std::vector<uint8_t> vRet(spanStream.size());
    memcpy(&vRet[0], spanStream.begin(), spanStream.size());

    return vRet;
}

template <typename T>
RangeProof<T> UnserializeRangeProof(const std::vector<unsigned char>& vecIn)
{
    using Point = typename T::Point;
    using Scalar = typename T::Scalar;

    RangeProof<T> retProof;
    CDataStream s(vecIn, 0, 0);

    s >> retProof.Vs;
    s >> retProof.Ls;
    s >> retProof.Rs;

    std::vector<uint8_t> vA;
    s >> vA;
    retProof.A.SetVch(vA);

    std::vector<uint8_t> vS;
    s >> vS;
    retProof.S.SetVch(vS);

    std::vector<uint8_t> vT1;
    s >> vT1;
    retProof.T1.SetVch(vT1);

    std::vector<uint8_t> vT2;
    s >> vT2;
    retProof.T2.SetVch(vT2);

    std::vector<uint8_t> vtau_x;
    s >> vtau_x;
    retProof.tau_x.SetVch(vtau_x);

    std::vector<uint8_t> vmu;
    s >> vmu;
    retProof.mu.SetVch(vmu);

    std::vector<uint8_t> va;
    s >> va;
    retProof.a.SetVch(va);

    std::vector<uint8_t> vb;
    s >> vb;
    retProof.b.SetVch(vb);

    std::vector<uint8_t> vt_hat;
    s >> vt_hat;
    retProof.t_hat.SetVch(vt_hat);

    return retProof;
}

#endif // NAVCOIN_BLSCT_RANGE_PROOF_RANGE_PROOF_H
