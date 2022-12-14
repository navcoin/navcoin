// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_RANGE_PROOF_LAZY_G1POINT_H
#define NAVCOIN_BLSCT_RANGE_PROOF_LAZY_G1POINT_H

#include <blsct/arith/elements.h>

template <typename P, typename V>
struct LazyG1Point {
public:
    LazyG1Point(const Point<P>& base, const Scalar<V>& exp): m_base(base.m_p), m_exp(exp.m_fr) {}

    const P m_base;
    const V m_exp;
};

template <typename P, typename V>
struct LazyG1Points {
public:
    LazyG1Points() {}
    LazyG1Points(const Points<P>& bases, const Scalars<V>& exps);

    void Add(const LazyG1Point<P,V>& point);
    Point<P> Sum() const;

    LazyG1Points<P,V> operator+(const LazyG1Points<P,V>& rhs) const;
    LazyG1Points<P,V> operator+(const LazyG1Point<P,V>& rhs) const;

private:
    std::vector<LazyG1Point<P,V>> points;
};

#endif // NAVCOIN_BLSCT_RANGE_PROOF_LAZY_G1POINT_H
