// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>

#include <blsct/arith/point.h>
#include <blsct/arith/scalar.h>

#include <blsct/arith/elements.h>
#include <blsct/arith/point.h>
#include <blsct/arith/scalar.h>
#include <blsct/arith/her/her_elements.h>

template <typename T>
T HerElements<T>::Sum() const
{
    T ret;
    for (T s : m_vec) {
        ret = ret + s;
    }
    return ret;
}
template HerScalar HerElements<HerScalar>::Sum() const;
template HerG1Point HerElements<HerG1Point>::Sum() const;

template <typename T>
T HerElements<T>::operator[](int index) const
{
    return m_vec[index];
}
template HerScalar HerElements<HerScalar>::operator[](int) const;
template HerG1Point HerElements<HerG1Point>::operator[](int) const;

template <typename T>
size_t HerElements<T>::Size() const
{
    return m_vec.size();
}
template size_t HerElements<HerScalar>::Size() const;
template size_t HerElements<HerG1Point>::Size() const;

template <typename T>
void HerElements<T>::Add(const T x)
{
    m_vec.push_back(x);
}
template void HerElements<HerScalar>::Add(const HerScalar);
template void HerElements<HerG1Point>::Add(const HerG1Point);

template <typename T>
inline void HerElements<T>::ConfirmSizesMatch(const size_t& other_size) const
{
    if (m_vec.size() != other_size) {
        throw std::runtime_error("sizes of elements are expected to be the same, but different");
    }
}
template void HerElements<HerScalar>::ConfirmSizesMatch(const size_t&) const;
template void HerElements<HerG1Point>::ConfirmSizesMatch(const size_t&) const;

template <typename T>
HerElements<T> HerElements<T>::FirstNPow(const size_t& n, const HerScalar& k)
{
    if constexpr (std::is_same_v<T, HerScalar>) {
        HerElements<HerScalar> ret;
        HerScalar x(1);
        for (size_t i = 0; i < n; ++i) {
            ret.m_vec.push_back(x);
            x = x * k;
        }
        return ret;
    } else {
        throw std::runtime_error("Not implemented");
    }
}
template HerElements<HerScalar> HerElements<HerScalar>::FirstNPow(const size_t&, const HerScalar&);

template <typename T>
HerElements<T> HerElements<T>::RepeatN(const size_t& n, const T& k)
{
    HerElements<T> ret;
    for (size_t i = 0; i < n; ++i) {
        ret.m_vec.push_back(k);
    }
    return ret;
}
template HerElements<HerScalar> HerElements<HerScalar>::RepeatN(const size_t&, const HerScalar&);
template HerElements<HerG1Point> HerElements<HerG1Point>::RepeatN(const size_t&, const HerG1Point&);

template <typename T>
HerElements<T> HerElements<T>::RandVec(const size_t& n, const bool exclude_zero)
{
    if constexpr (std::is_same_v<T, HerScalar>) {
        HerElements<HerScalar> ret;
        for (size_t i = 0; i < n; ++i) {
            auto x = HerScalar::Rand(exclude_zero);
            ret.m_vec.push_back(x);
        }
        return ret;
    } else {
        throw std::runtime_error("Not implemented");
    }
}
template HerElements<HerScalar> HerElements<HerScalar>::RandVec(const size_t&, const bool);

template <typename T>
HerElements<T> HerElements<T>::operator*(const HerElements<HerScalar>& other) const
{
    ConfirmSizesMatch(other.Size());

    if constexpr (std::is_same_v<T, HerScalar>) {
        HerElements<HerScalar> ret;
        for (size_t i = 0; i < m_vec.size(); ++i) {
            ret.m_vec.push_back(m_vec[i] * other[i]);
        }
        return ret;

    } else if constexpr (std::is_same_v<T, HerG1Point>) {
        HerElements<HerG1Point> ret;
        for (size_t i = 0; i < Size(); ++i) {
            ret.m_vec.push_back(m_vec[i] * other[i]);
        }
        return ret;

    } else {
        throw std::runtime_error("Not implemented");
    }
}
template HerElements<HerScalar> HerElements<HerScalar>::operator*(const HerElements<HerScalar>& other) const;
template HerElements<HerG1Point> HerElements<HerG1Point>::operator*(const HerElements<HerScalar>& other) const;

template <typename T>
HerElements<T> HerElements<T>::operator*(const HerScalar& s) const
{
    if constexpr (std::is_same_v<T, HerScalar>) {
        HerElements<HerScalar> ret;
        for (size_t i = 0; i < m_vec.size(); ++i) {
            ret.m_vec.push_back(m_vec[i] * s);
        }
        return ret;

    } else if constexpr (std::is_same_v<T, HerG1Point>) {
        HerElements<HerG1Point> ret;
        for (size_t i = 0; i < m_vec.size(); ++i) {
            ret.m_vec.push_back(m_vec[i] * s);
        }
        return ret;

    } else {
        throw std::runtime_error("Not implemented");
    }
}
template HerElements<HerScalar> HerElements<HerScalar>::operator*(const HerScalar&) const;
template HerElements<HerG1Point> HerElements<HerG1Point>::operator*(const HerScalar& s) const;

template <typename T>
HerElements<T> HerElements<T>::operator+(const HerElements<T>& other) const
{
    ConfirmSizesMatch(other.Size());

    HerElements<T> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] + other.m_vec[i]);
    }
    return ret;
}
template HerElements<HerScalar> HerElements<HerScalar>::operator+(const HerElements<HerScalar>& other) const;
template HerElements<HerG1Point> HerElements<HerG1Point>::operator+(const HerElements<HerG1Point>& other) const;

template <typename T>
HerElements<T> HerElements<T>::operator-(const HerElements<T>& other) const
{
    ConfirmSizesMatch(other.Size());

    HerElements<T> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] - other.m_vec[i]);
    }
    return ret;
}
template HerElements<HerScalar> HerElements<HerScalar>::operator-(const HerElements<HerScalar>& other) const;
template HerElements<HerG1Point> HerElements<HerG1Point>::operator-(const HerElements<HerG1Point>& other) const;

template <typename T>
bool HerElements<T>::operator==(const HerElements<T>& other) const
{
    if (m_vec.size() != other.Size()) {
        return false;
    }

    for (size_t i = 0; i < m_vec.size(); ++i) {
        if (m_vec[i] != other[i]) return false;
    }
    return true;
}
template bool HerElements<HerScalar>::operator==(const HerElements<HerScalar>& other) const;
template bool HerElements<HerG1Point>::operator==(const HerElements<HerG1Point>& other) const;

template <typename T>
bool HerElements<T>::operator!=(const HerElements<T>& other) const
{
    return !operator==(other);
}
template bool HerElements<HerScalar>::operator!=(const HerElements<HerScalar>& other) const;
template bool HerElements<HerG1Point>::operator!=(const HerElements<HerG1Point>& other) const;

template <typename T>
HerElements<T> HerElements<T>::From(const size_t from_index) const
{
    if (from_index >= Size()) {
        throw std::runtime_error("from index out of range");
    }

    HerElements<T> ret;
    for (size_t i = from_index; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i]);
    }
    return ret;
}
template HerElements<HerScalar> HerElements<HerScalar>::From(const size_t from_index) const;
template HerElements<HerG1Point> HerElements<HerG1Point>::From(const size_t from_index) const;

template <typename T>
HerElements<T> HerElements<T>::To(const size_t to_index) const
{
    if (to_index > Size()) {
        throw std::runtime_error("to index out of range");
    }

    HerElements<T> ret;
    for (size_t i = 0; i < to_index; ++i) {
        ret.m_vec.push_back(m_vec[i]);
    }
    return ret;
}
template HerElements<HerScalar> HerElements<HerScalar>::To(const size_t to_index) const;
template HerElements<HerG1Point> HerElements<HerG1Point>::To(const size_t to_index) const;

template <typename T>
HerG1Point HerElements<T>::MulVec(const HerElements<HerScalar>& scalars) const
{
    if constexpr (std::is_same_v<T, HerG1Point>) {
        ConfirmSizesMatch(scalars.Size());

        const size_t vec_count = m_vec.size();

        std::vector<mclBnG1> vec_g1(vec_count);
        std::vector<mclBnFr> vec_fr(vec_count);

        for (size_t i = 0; i < vec_count; ++i) {
            vec_g1[i] = m_vec[i].m_p;
            vec_fr[i] = scalars[i].m_fr;
        }

        HerG1Point ret;
        mclBnG1_mulVec(&ret.m_p, vec_g1.data(), vec_fr.data(), vec_count);
        return ret;

    } else {
        throw std::runtime_error("Not implemented");
    }
}
template HerG1Point HerElements<HerG1Point>::MulVec(const HerElements<HerScalar>&) const;
