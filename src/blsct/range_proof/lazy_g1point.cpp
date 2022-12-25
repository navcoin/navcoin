// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/her/her_g1point.h>
#include <blsct/arith/her/her_scalar.h>
#include <blsct/range_proof/lazy_g1point.h>
#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>
#include <blsct/arith/her/her_scalar.h>

template <typename P, typename S>
LazyG1Point<P,S>::LazyG1Point(const P& base, const S& exp): m_base(base.m_p), m_exp(exp.m_fr)
{
}
template LazyG1Point<HerG1Point,HerScalar>::LazyG1Point(const HerG1Point& base, const HerScalar& exp);

template <typename P, typename S>
LazyG1Points<P,S>::LazyG1Points(const Points<P>& bases, const Scalars<S>& exps) {
    if (bases.Size() != exps.Size()) {
        throw std::runtime_error("number of bases and exps don't match");
    }
    for (size_t i=0; i<bases.Size(); ++i) {
        points.push_back(LazyG1Point(bases[i], exps[i]));
    }
}
template LazyG1Points<HerG1Point,HerScalar>::LazyG1Points(const Points<HerG1Point>& bases, const Scalars<HerScalar>& exps);

template <typename P, typename S>
void LazyG1Points<P,S>::Add(const LazyG1Point<P,S>& point) {
    points.push_back(point);
}
template void LazyG1Points<HerG1Point,HerScalar>::Add(const LazyG1Point<HerG1Point,HerScalar>& point);

template <typename P, typename S>
P LazyG1Points<P,S>::Sum() const {
    std::vector<typename P::UnderlyingType> bases;
    std::vector<typename S::UnderlyingType> exps;

    for (auto point: points) {
        bases.push_back(point.m_base.Underlying());
        exps.push_back(point.m_exp.Underlying());
    }
    typename P::UnderlyingType pv;
    mclBnG1_mulVec(&pv, bases.data(), exps.data(), points.size());
    return P(pv);
}
template HerG1Point LazyG1Points<HerG1Point,HerScalar>::Sum() const;

template <typename P, typename S>
LazyG1Points<P,S> LazyG1Points<P,S>::operator+(const LazyG1Points<P,S>& rhs) const {
    Points<P> bases;
    Scalars<S> exps;

    for (auto p: points) {
        bases.Add(p.m_base);
        exps.Add(p.m_exp);
    }
    for (auto p: rhs.points) {
        bases.Add(p.m_base);
        exps.Add(p.m_exp);
    }

    return LazyG1Points<P,S>(bases, exps);
}
template LazyG1Points<HerG1Point,HerScalar> LazyG1Points<HerG1Point,HerScalar>::operator+(const LazyG1Points<HerG1Point,HerScalar>& rhs) const;

template <typename P, typename S>
LazyG1Points<P,S> LazyG1Points<P,S>::operator+(const LazyG1Point<P,S>& rhs) const {
    Points<P> bases;
    Scalars<S> exps;

    for (auto p: points) {
        bases.Add(p.m_base);
        exps.Add(p.m_exp);
    }
    bases.Add(rhs.m_base);
    exps.Add(rhs.m_exp);

    return LazyG1Points<P,S>(bases, exps);
}
template LazyG1Points<HerG1Point,HerScalar> LazyG1Points<HerG1Point,HerScalar>::operator+(const LazyG1Point<HerG1Point,HerScalar>& rhs) const;
