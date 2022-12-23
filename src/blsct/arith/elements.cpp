// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/elements.h>
#include <blsct/arith/her/her_scalar.h>
#include <blsct/arith/her/her_g1point.h>
#include <blsct/arith/point.h>
#include <blsct/arith/scalar.h>
#include <tinyformat.h>

template <typename T>
Elements<T>::Elements(const size_t& size, const T& default_value)
{
    std::vector<T> vec(size, default_value);
    m_vec = vec;
}
template Elements<HerScalar>::Elements(const size_t&, const HerScalar&);
template Elements<HerG1Point>::Elements(const size_t&, const HerG1Point&);

template <typename T>
Elements<T>::Elements(const Elements &x)
{
    m_vec = x.m_vec;
}
template Elements<HerScalar>::Elements(const Elements &x);
template Elements<HerG1Point>::Elements(const Elements &x);

template <typename T>
bool Elements<T>::Empty() const
{
    return m_vec.empty()
}
template bool Elements<HerScalar>::Empty() const;
template bool Elements<HerG1Point>::Empty() const;

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
void Elements<T>::ConfirmIndexInsideRange(const uint32_t& index) const {
    if (index >= m_vec.size()) {
        auto s = strprintf("index %d is out of range [0..%d]", index, m_vec.size() - 1ul);
        throw std::runtime_error(s);
    }
}
template void Elements<HerScalar>::ConfirmIndexInsideRange(const uint32_t&) const;
template void Elements<HerG1Point>::ConfirmIndexInsideRange(const uint32_t&) const;

template <typename T>
T& Elements<T>::operator[](const size_t& index)
{
    ConfirmIndexInsideRange(index);
    return m_vec[index];
}
template HerScalar& Elements<HerScalar>::operator[](const size_t&);
template HerG1Point& Elements<HerG1Point>::operator[](const size_t&);

template <typename T>
T Elements<T>::operator[](const size_t& index) const
{
    ConfirmIndexInsideRange(index);
    return m_vec[index];
}
template HerScalar Elements<HerScalar>::operator[](const size_t&) const;
template HerG1Point Elements<HerG1Point>::operator[](const size_t&) const;

template <typename T>
size_t Elements<T>::Size() const
{
    return m_vec.size();
}
template size_t Elements<HerScalar>::Size() const;
template size_t Elements<HerG1Point>::Size() const;

template <typename T>
bool Elements<T>::Empty() const
{
    return m_vec.empty();
}
template bool Elements<HerScalar>::Empty() const;
template bool Elements<HerG1Point>::Empty() const;

template <typename T>
void Elements<T>::Add(const T& x)
{
    m_vec.push_back(x);
}
template void Elements<HerScalar>::Add(const HerScalar&);
template void Elements<HerG1Point>::Add(const HerG1Point&);

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
Elements<T> Elements<T>::FirstNPow(const T& k, const size_t& n, const size_t& from_index)
{
    if constexpr (std::is_same_v<T, Scalar>) {
        Elements<Scalar> ret;
        Scalar x(1);
        for (size_t i = 0; i < n + from_index; ++i) {
            if (i >= from_index) {
                ret.m_vec.push_back(x);
            }
            x = x * k;
        }
        return ret;
    } else {
        throw std::runtime_error("Not implemented");
    }
}
template Elements<HerScalar> Elements<HerScalar>::FirstNPow(const HerScalar&, const size_t&, const size_t& from_index);

template <typename T>
Elements<T> Elements<T>::RepeatN(const T& k, const size_t& n)
{
    Elements<T> ret;
    for (size_t i = 0; i < n; ++i) {
        ret.m_vec.push_back(k);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::RepeatN(const HerScalar&, const size_t&);
template Elements<HerG1Point> Elements<HerG1Point>::RepeatN(const HerG1Point&, const size_t&);

template <typename T>
Elements<T> Elements<T>::RandVec(const size_t& n, const bool exclude_zero)
{
    if constexpr (std::is_same_v<T, Scalar>) {
        Elements<Scalar> ret;
        for (size_t i = 0; i < n; ++i) {
            auto x = Scalar::Rand(exclude_zero);
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
Elements<T> Elements<T>::operator*(const Elements<S>& rhs) const
{
    ConfirmSizesMatch(other.Size());

    Elements<Scalar> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] * rhs[i]);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::operator*(const Elements<HerScalar>&) const;
template Elements<HerG1Point> Elements<HerG1Point>::operator*(const Elements<HerScalar>&) const;

template <typename T>
template <typename S>
Elements<T> Elements<T>::operator*(const S& rhs) const
{
    Elements<S> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] * rhs);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::operator*(const HerScalar&) const;
template Elements<HerG1Point> Elements<HerG1Point>::operator*(const HerScalar&) const;

template <typename T>
Elements<T> Elements<T>::operator+(const Elements<T>& rhs) const
{
    ConfirmSizesMatch(rhs.Size());

    Elements<T> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] + rhs.m_vec[i]);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::operator+(const Elements<HerScalar>&) const;
template Elements<HerG1Point> Elements<HerG1Point>::operator+(const Elements<HerG1Point>&) const;

template <typename T>
Elements<T> Elements<T>::operator-(const Elements<T>& rhs) const
{
    ConfirmSizesMatch(rhs.Size());

    Elements<T> ret;
    for (size_t i = 0; i < m_vec.size(); ++i) {
        ret.m_vec.push_back(m_vec[i] - rhs.m_vec[i]);
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::operator-(const Elements<HerScalar>&) const;
template Elements<HerG1Point> Elements<HerG1Point>::operator-(const Elements<HerG1Point>&) const;

template <typename T>
void Elements<T>::operator=(const Elements<T>& rhs)
{
    m_vec.clear();
    for (size_t i = 0; i < other.m_vec.size(); ++i) {
        auto copy = T(rhs.m_vec[i]);
        m_vec.push_back(copy);
    }
}
template void Elements<HerScalar>::operator=(const Elements<HerScalar>&);
template void Elements<HerG1Point>::operator=(const Elements<HerG1Point>&);

template <typename T>
bool Elements<T>::operator==(const Elements<T>& rhs) const
{
    if (m_vec.size() != rhs.Size()) {
        return false;
    }

    for (size_t i = 0; i < m_vec.size(); ++i) {
        if (m_vec[i] != rhs[i]) return false;
    }
    return true;
}
template bool Elements<HerScalar>::operator==(const Elements<HerScalar>&) const;
template bool Elements<HerG1Point>::operator==(const Elements<HerG1Point>&) const;

template <typename T>
bool Elements<T>::operator!=(const Elements<T>& rhs) const
{
    return !operator==(rhs);
}
template bool Elements<HerScalar>::operator!=(const Elements<HerScalar>&) const;
template bool Elements<HerG1Point>::operator!=(const Elements<HerG1Point>&) const;

template <typename T>
Elements<T> Elements<T>::From(const size_t from_index) const
{
    if (from_index >= Size()) {
        throw std::runtime_error("'From' index out of range");
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
        throw std::runtime_error("'To' index out of range");
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
Elements<T> Elements<T>::Negate() const
{
    Scalars ret;
    for(auto& x: m_vec) {
        ret.Add(x.Negate());
    }
    return ret;
}
template Elements<HerScalar> Elements<HerScalar>::Negate() const;
