// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/point.h>
#include <blsct/arith/her/her_g1point.h>

template <typename T>
Point<T>::Point()
{
}
template Point<HerG1Point>::Point();

template <typename T>
void Point<T>::Init()
{
    T::Init();
}

template <typename T>
template <typename P>
Point<T> Point<T>::operator=(const P& rhs)
{
    return static_cast<T*>(this)->operator=(rhs);
}

template <typename T>
Point<T> Point<T>::operator+(const Point<T>& rhs) const
{
    return static_cast<T*>(this)->operator+(rhs);
}

template <typename T>
Point<T> Point<T>::operator-(const Point<T>& rhs) const
{
    return static_cast<T*>(this)->operator-(rhs);
}

template <typename T>
template <typename V>
Point<T> Point<T>::operator*(const Scalar<V>& rhs) const
{
    return static_cast<T*>(this)->operator*(rhs);
}

template <typename T>
bool Point<T>::operator==(const Point<T>& rhs) const
{
    return static_cast<T*>(this)->operator==(rhs);
}

template <typename T>
bool Point<T>::operator!=(const Point<T>& rhs) const
{
    return static_cast<T*>(this)->operator!=(rhs);
}

template <typename T>
Point<T> Point<T>::Double() const
{
    return static_cast<T*>(this)->Double();
}

template <typename T>
Point<T> Point<T>::GetBasePoint()
{
    return Point<T>::GetBasePoint();
}

template <typename T>
Point<T> Point<T>::MapToG1(const std::vector<uint8_t>& vec, const Endianness e)
{
    return Point<T>::MapToG1(vec, e);
}

template <typename T>
Point<T> Point<T>::MapToG1(const std::string& s, const Endianness e)
{
    return Point<T>::MapToG1(s, e);
}

template <typename T>
Point<T> Point<T>::HashAndMap(const std::vector<uint8_t>& vec)
{
    return Point<T>::HashAndMap(vec);
}

template <typename T>
template <typename P, typename V>
Point<T> Point<T>::MulVec(const std::vector<P>& g_vec, const std::vector<V>& s_vec)
{
    return Point<T>::MulVec(g_vec, s_vec);
}

template <typename T>
Point<T> Point<T>::Rand()
{
    return Point<T>::Rand();
}

template <typename T>
bool Point<T>::IsValid() const
{
    return static_cast<T*>(this)->IsValid();
}

template <typename T>
bool Point<T>::IsUnity() const
{
    return static_cast<T*>(this)->IsUnity();
}

template <typename T>
std::vector<uint8_t> Point<T>::GetVch() const
{
    return static_cast<T*>(this)->GetVch();
}

template <typename T>
void Point<T>::SetVch(const std::vector<uint8_t>& vec)
{
    return static_cast<T*>(this)->SetVch(vec);
}

template <typename T>
std::string Point<T>::GetString(const int& radix) const
{
    return static_cast<T*>(this)->GetString(radix);
}

template <typename T>
unsigned int Point<T>::GetSerializeSize() const
{
    return static_cast<T*>(this)->GetSerializedSize();
}

template <typename T>
template <typename Stream>
void Point<T>::Serialize(Stream& s) const
{
    ::Serialize(s, GetVch());
}

template <typename T>
template <typename Stream>
void Point<T>::Unserialize(Stream& s)
{
    std::vector<uint8_t> vch;
    ::Unserialize(s, vch);
    SetVch(vch);
}










