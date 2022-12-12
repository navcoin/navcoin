// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>

#include <blsct/arith/elements.h>
#include <blsct/arith/her/her_g1point.h>
#include <blsct/arith/her/her_scalar.h>
#include <blsct/arith/point.h>
#include <blsct/arith/scalar.h>

template <typename T>
Elements<T>::Elements()
{
}
template Elements<HerScalar>::Elements();
template Elements<HerG1Point>::Elements();

template <typename T>
Elements<T>::Elements(std::vector<T> vec)
{
    m_vec = vec;
}
template Elements<HerScalar>::Elements(std::vector<HerScalar> vec);
template Elements<HerG1Point>::Elements(std::vector<HerG1Point> vec);

template <typename T>
T Elements<T>::Sum() const
{
    T ret;
    for (T s : m_vec) {
        ret = ret + s;
    }
    return ret;
}
template HerScalar Elements<HerScalar>::Sum() const;
template HerG1Point Elements<HerG1Point>::Sum() const;

template <typename T>
T Elements<T>::operator[](int index) const
{
    return m_vec[index];
}
template HerScalar Elements<HerScalar>::operator[](int) const;
template HerG1Point Elements<HerG1Point>::operator[](int) const;

template <typename T>
size_t Elements<T>::Size() const
{
    return m_vec.size();
}
template size_t Elements<HerScalar>::Size() const;
template size_t Elements<HerG1Point>::Size() const;

template <typename T>
void Elements<T>::Add(const T x)
{
    m_vec.push_back(x);
}
template void Elements<HerScalar>::Add(const HerScalar);
template void Elements<HerG1Point>::Add(const HerG1Point);

template <typename T>
inline void Elements<T>::ConfirmSizesMatch(const size_t& other_size) const
{
    if (m_vec.size() != other_size) {
        throw std::runtime_error("sizes of elements are expected to be the same, but different");
    }
}
template void Elements<HerScalar>::ConfirmSizesMatch(const size_t&) const;
template void Elements<HerG1Point>::ConfirmSizesMatch(const size_t&) const;

template <typename T>
Elements<T> Elements<T>::FirstNPow(const size_t& n, const T& k)
{
    Elements<T> ret;
    T x(1);
    for (size_t i = 0; i < n; ++i) {
        ret.m_vec.push_back(x);
        x = x * k;
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::FirstNPow(const size_t&, const HerScalar&);

template <typename T>
Elements<T> Elements<T>::RepeatN(const size_t& n, const T& k)
{
    Elements<T> ret;
    for (size_t i = 0; i < n; ++i) {
        ret.m_vec.push_back(k);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::RepeatN(const size_t&, const HerScalar&);
template Elements<HerG1Point> Elements<HerG1Point>::RepeatN(const size_t&, const HerG1Point&);

template <typename T>
Elements<T> Elements<T>::RandVec(const size_t& n, const bool exclude_zero)
{
    if constexpr (std::is_same_v<T, HerScalar>) {
        Elements<T> ret;
        for (size_t i = 0; i < n; ++i) {
            auto x = T::Rand(exclude_zero);
            ret.m_vec.push_back(x);
        }
        return ret;
    } else {
        throw std::runtime_error("Not implemented");
    }
}
template Elements<HerScalar> Elements<HerScalar>::RandVec(const size_t&, const bool);

template <typename T>
template <typename S>
Elements<T> Elements<T>::operator*(const Elements<S>& other) const
{
    ConfirmSizesMatch(other.Size());

    Elements<T> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] * other[i]);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::operator*(const Elements<HerScalar>& other) const;
template Elements<HerG1Point> Elements<HerG1Point>::operator*(const Elements<HerScalar>& other) const;

template <typename T>
template <typename S>
Elements<T> Elements<T>::operator*(const S& s) const
{
    Elements<T> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] * s);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::operator*(const HerScalar&) const;
template Elements<HerG1Point> Elements<HerG1Point>::operator*(const HerScalar& s) const;

template <typename T>
Elements<T> Elements<T>::operator+(const Elements<T>& other) const
{
    ConfirmSizesMatch(other.Size());

    Elements<T> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] + other.m_vec[i]);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::operator+(const Elements<HerScalar>& other) const;
template Elements<HerG1Point> Elements<HerG1Point>::operator+(const Elements<HerG1Point>& other) const;

template <typename T>
Elements<T> Elements<T>::operator-(const Elements<T>& other) const
{
    ConfirmSizesMatch(other.Size());

    Elements<T> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] - other.m_vec[i]);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::operator-(const Elements<HerScalar>& other) const;
template Elements<HerG1Point> Elements<HerG1Point>::operator-(const Elements<HerG1Point>& other) const;

template <typename T>
bool Elements<T>::operator==(const Elements<T>& other) const
{
    if (m_vec.size() != other.Size()) {
        return false;
    }

    for (size_t i = 0; i < m_vec.size(); ++i) {
        if (m_vec[i] != other[i]) return false;
    }
    return true;
}
template bool Elements<HerScalar>::operator==(const Elements<HerScalar>& other) const;
template bool Elements<HerG1Point>::operator==(const Elements<HerG1Point>& other) const;

template <typename T>
bool Elements<T>::operator!=(const Elements<T>& other) const
{
    return !operator==(other);
}
template bool Elements<HerScalar>::operator!=(const Elements<HerScalar>& other) const;
template bool Elements<HerG1Point>::operator!=(const Elements<HerG1Point>& other) const;

template <typename T>
Elements<T> Elements<T>::From(const size_t from_index) const
{
    if (from_index >= Size()) {
        throw std::runtime_error("from index out of range");
    }

    Elements<T> ret;
    for (size_t i = from_index; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i]);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::From(const size_t from_index) const;
template Elements<HerG1Point> Elements<HerG1Point>::From(const size_t from_index) const;

template <typename T>
Elements<T> Elements<T>::To(const size_t to_index) const
{
    if (to_index > Size()) {
        throw std::runtime_error("to index out of range");
    }

    Elements<T> ret;
    for (size_t i = 0; i < to_index; ++i) {
        ret.m_vec.push_back(m_vec[i]);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::To(const size_t to_index) const;
template Elements<HerG1Point> Elements<HerG1Point>::To(const size_t to_index) const;

template <typename T>
template <typename S>
T Elements<T>::MulVec(const Elements<S>& scalars) const
{
    ConfirmSizesMatch(scalars.Size());

    const size_t vec_count = m_vec.size();

    std::vector<mclBnG1> vec_g1(vec_count);
    std::vector<mclBnFr> vec_fr(vec_count);

    for (size_t i = 0; i < vec_count; ++i) {
        vec_g1[i] = m_vec[i].m_p;
        vec_fr[i] = scalars[i].m_fr;
    }

    T ret;
    mclBnG1_mulVec(&ret.m_p, vec_g1.data(), vec_fr.data(), vec_count);
    return ret;
}
template HerG1Point Elements<HerG1Point>::MulVec(const Elements<HerScalar>&) const;
