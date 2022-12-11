// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/elements.h>

template <typename T>
Elements<T>::Elements()
{
    static_cast<T*>(this)->Constructor();
}

template <typename T>
Elements<T>::Elements(const std::vector<T>& vec)
{
    static_cast<T*>(this)->Constructor(vec);
}

template <typename T>
T Elements<T>::Sum() const
{
    return static_cast<T*>(this)->Sum();
}

template <typename T>
size_t Elements<T>::Size() const
{
    return static_cast<T*>(this)->Size();
}

template <typename T>
void Elements<T>::Add(const T x)
{
    static_cast<T*>(this)->Add(x);
}

template <typename T>
void Elements<T>::ConfirmSizesMatch(const size_t& other_size) const
{
    static_cast<T*>(this)->ConfirmSizesMatch(other_size);
}

template <typename T>
Elements<T> Elements<T>::FirstNPow(const size_t& n, const Scalar<T>& k)
{
    return Elements<T>::FirstNPow(n, k);
}

template <typename T>
Elements<T> Elements<T>::RepeatN(const size_t& n, const T& k)
{
    return Elements<T>::RepeatN(n, k);
}

template <typename T>
Elements<T> Elements<T>::RandVec(const size_t& n, const bool exclude_zero)
{
    return Elements<T>::RandVec(n, exclude_zero);
}

template <typename T>
T Elements<T>::operator[](int index) const
{
    return static_cast<T*>(this)->operator[](index);
}

template <typename T>
template <typename V>
Elements<T> Elements<T>::operator*(const Elements<Scalar<V>>& rhs) const
{
    return static_cast<T*>(this)->operator*(rhs);
}

template <typename T>
template <typename V>
Elements<T> Elements<T>::operator*(const Scalar<V>& rhs) const
{
    return static_cast<T*>(this)->operator*(rhs);
}

template <typename T>
Elements<T> Elements<T>::operator+(const Elements<T>& rhs) const
{
    return static_cast<T*>(this)->operator+(rhs);
}

template <typename T>
Elements<T> Elements<T>::operator-(const Elements<T>& rhs) const
{
    return static_cast<T*>(this)->operator-(rhs);
}

template <typename T>
bool Elements<T>::operator==(const Elements<T>& rhs) const
{
    return static_cast<T*>(this)->operator==(rhs);
}

template <typename T>
bool Elements<T>::operator!=(const Elements<T>& rhs) const
{
    return static_cast<T*>(this)->operator!=(rhs);
}

template <typename T>
template <typename P, typename V>
Point<P> Elements<T>::MulVec(const Elements<Scalar<V>>& scalars) const
{
    return static_cast<T*>(this)->MulVec(scalars);
}

template <typename T>
Elements<T> Elements<T>::From(const size_t from_index) const
{
    return static_cast<T*>(this)->MulVec(from_index);
}

template <typename T>
Elements<T> Elements<T>::To(const size_t to_index) const
{
    return static_cast<T*>(this)->MulVec(to_index);
}
