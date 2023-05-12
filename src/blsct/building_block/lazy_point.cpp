// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/mcl/mcl.h>
#include <blsct/arith/secp256k1/secp256k1.h>
#include <blsct/building_block/lazy_point.h>

template <typename T>
LazyPoint<T>::LazyPoint(const typename T::Point& base, const typename T::Scalar& exp): m_base(base.m_point), m_exp(exp.m_scalar)
{
}
template LazyPoint<Mcl>::LazyPoint(const Mcl::Point& base, const Mcl::Scalar& exp);
template LazyPoint<Secp256k1>::LazyPoint(const Secp256k1::Point& base, const Secp256k1::Scalar& exp);
