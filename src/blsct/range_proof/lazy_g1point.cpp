// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/range_proof/lazy_g1point.h>
#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>

template <typename P, typename V>
LazyG1Points<P,V>::LazyG1Points(const Points<P>& bases, const Scalars<V>& exps) {
    if (bases.Size() != exps.Size()) {
        throw std::runtime_error("number of bases and exps don't match");
    }
    for (size_t i=0; i<bases.Size(); ++i) {
        points.push_back(LazyG1Point(bases[i].m_p, exps[i].m_fr));
    }
}

template <typename P, typename V>
void LazyG1Points<P,V>::Add(const LazyG1Point<P,V>& point) {
    points.push_back(point);
}

template <typename P, typename V>
Point<P> LazyG1Points<P,V>::Sum() const {
    if constexpr (std::is_same_v<T, HerScalar>) {
        std::vector<P> bases;
        std::vector<V> exps;

        for (auto point: points) {
            bases.push_back(point.m_base);
            exps.push_back(point.m_exp);
        }
        Point<P> p;
        mclBnG1_mulVec(&p.m_p, bases.data(), exps.data(), points.size());
        return p;
    } else {
        throw std::runtime_error("Not implemented");
    }
}
template Point<mclBnG1> LazyG1Points<mclBnG1,mclBnFr>::Sum() const;

template <typename P, typename V>
LazyG1Points<P,V> LazyG1Points<P,V>::operator+(const LazyG1Points<P,V>& rhs) const {
    std::vector<Point<P>> bases;
    std::vector<Scalar<V>> exps;

    for (auto p: points) {
        bases.push_back(p.m_base);
        exps.push_back(p.m_exp);
    }
    for (auto p: rhs.points) {
        bases.push_back(p.m_base);
        exps.push_back(p.m_exp);
    }

    return LazyG1Points<P,V>(bases, exps);
}

template <typename P, typename V>
LazyG1Points<P,V> LazyG1Points<P,V>::operator+(const LazyG1Point<P,V>& rhs) const {
    std::vector<Point<P>> bases;
    std::vector<Scalar<V>> exps;

    for (auto p: points) {
        bases.push_back(p.m_base);
        exps.push_back(p.m_exp);
    }
    bases.push_back(rhs.m_base);
    exps.push_back(rhs.m_exp);

    return LazyG1Points<P,V>(bases, exps);
}