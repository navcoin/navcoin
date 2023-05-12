// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/mcl/mcl.h>
#include <blsct/arith/secp256k1/secp256k1.h>
#include <blsct/building_block/lazy_points.h>
#include <bls/bls384_256.h>

template <typename T>
LazyPoints<T>::LazyPoints(const Elements<typename T::Point>& bases, const Elements<typename T::Scalar>& exps) {
    if (bases.Size() != exps.Size()) {
        throw std::runtime_error("number of bases and exps don't match");
    }
    for (size_t i=0; i<bases.Size(); ++i) {
        m_points.push_back(LazyPoint<T>(bases[i], exps[i]));
    }
}
template LazyPoints<Mcl>::LazyPoints(const Elements<Mcl::Point>& bases, const Elements<Mcl::Scalar>& exps);
template LazyPoints<Secp256k1>::LazyPoints(const Elements<Secp256k1::Point>& bases, const Elements<Secp256k1::Scalar>& exps);

template <typename T>
void LazyPoints<T>::Add(const LazyPoint<T>& point) {
    m_points.push_back(point);
}
template void LazyPoints<Mcl>::Add(const LazyPoint<Mcl>& point);
template void LazyPoints<Secp256k1>::Add(const LazyPoint<Secp256k1>& point);

template <typename T>
typename T::Point LazyPoints<T>::Sum() const {
    return T::Util::template MultiplyLazyPoints(m_points);
}
template Mcl::Point LazyPoints<Mcl>::Sum() const;
template Secp256k1::Point LazyPoints<Secp256k1>::Sum() const;

template <typename T>
LazyPoints<T> LazyPoints<T>::operator+(const LazyPoints<T>& rhs) const {
    Elements<typename T::Point> bases;
    Elements<typename T::Scalar> exps;

    for (auto p: m_points) {
        bases.Add(p.m_base);
        exps.Add(p.m_exp);
    }
    for (auto p: rhs.m_points) {
        bases.Add(p.m_base);
        exps.Add(p.m_exp);
    }

    return LazyPoints<T>(bases, exps);
}
template LazyPoints<Mcl> LazyPoints<Mcl>::operator+(const LazyPoints<Mcl>& rhs) const;
template LazyPoints<Secp256k1> LazyPoints<Secp256k1>::operator+(const LazyPoints<Secp256k1>& rhs) const;

template <typename T>
LazyPoints<T> LazyPoints<T>::operator+(const LazyPoint<T>& rhs) const {
    Elements<typename T::Point> bases;
    Elements<typename T::Scalar> exps;

    for (auto p: m_points) {
        bases.Add(p.m_base);
        exps.Add(p.m_exp);
    }
    bases.Add(rhs.m_base);
    exps.Add(rhs.m_exp);

    return LazyPoints<T>(bases, exps);
}
template LazyPoints<Mcl> LazyPoints<Mcl>::operator+(const LazyPoint<Mcl>& rhs) const;
template LazyPoints<Secp256k1> LazyPoints<Secp256k1>::operator+(const LazyPoint<Secp256k1>& rhs) const;
