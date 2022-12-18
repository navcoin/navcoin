// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_RANGE_PROOF_LAZY_G1POINT_H
#define NAVCOIN_BLSCT_RANGE_PROOF_LAZY_G1POINT_H

#include <blsct/arith/elements.h>

template <typename P, typename S>
struct LazyG1Point {
public:
    LazyG1Point(const P& base, const S& exp);

    const P m_base;
    const S m_exp;
};

template <typename P, typename S>
struct LazyG1Points {
public:
    LazyG1Points() {}
    LazyG1Points(const Points<P>& bases, const Scalars<S>& exps);

    void Add(const LazyG1Point<P,S>& point);

    template <typename PV, typename SV>
    P Sum() const;

    LazyG1Points<P,S> operator+(const LazyG1Points<P,S>& rhs) const;
    LazyG1Points<P,S> operator+(const LazyG1Point<P,S>& rhs) const;

private:
    std::vector<LazyG1Point<P,S>> points;
};

#endif // NAVCOIN_BLSCT_RANGE_PROOF_LAZY_G1POINT_H
