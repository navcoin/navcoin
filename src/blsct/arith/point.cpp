// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/point.h>
#include <blsct/arith/her/her_g1point.h>
#include <streams.h>

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
template void Point<HerG1Point>::Init();

template <typename T>
template <typename P>
T Point<T>::operator=(const P& rhs)
{
    return static_cast<T*>(this)->operator=(rhs);
}
template HerG1Point Point<HerG1Point>::operator=(const mclBnG1& rhs);

template <typename T>
T Point<T>::operator+(const T& rhs) const
{
    return static_cast<const T*>(this)->operator+(rhs);
}
template HerG1Point Point<HerG1Point>::operator+(const HerG1Point& rhs) const;

template <typename T>
T Point<T>::operator-(const T& rhs) const
{
    return static_cast<const T*>(this)->operator-(rhs);
}
template HerG1Point Point<HerG1Point>::operator-(const HerG1Point& rhs) const;

template <typename T>
template <typename S>
T Point<T>::operator*(const S& rhs) const
{
    return static_cast<const T*>(this)->operator*(rhs);
}
template HerG1Point Point<HerG1Point>::operator*(const HerScalar& rhs) const;

template <typename T>
bool Point<T>::operator==(const T& rhs) const
{
    return static_cast<const T*>(this)->operator==(rhs);
}
template bool Point<HerG1Point>::operator==(const HerG1Point& rhs) const;

template <typename T>
bool Point<T>::operator!=(const T& rhs) const
{
    return static_cast<const T*>(this)->operator!=(rhs);
}
template bool Point<HerG1Point>::operator!=(const HerG1Point& rhs) const;

template <typename T>
T Point<T>::Double() const
{
    return static_cast<const T*>(this)->Double();
}
template HerG1Point Point<HerG1Point>::Double() const;

template <typename T>
T Point<T>::GetBasePoint()
{
    return T::GetBasePoint();
}
template HerG1Point Point<HerG1Point>::GetBasePoint();

template <typename T>
T Point<T>::MapToG1(const std::vector<uint8_t>& vec, const Endianness e)
{
    return T::MapToG1(vec, e);
}
template HerG1Point Point<HerG1Point>::MapToG1(const std::vector<uint8_t>& vec, const Endianness e);

template <typename T>
T Point<T>::MapToG1(const std::string& s, const Endianness e)
{
    return T::MapToG1(s, e);
}
template HerG1Point Point<HerG1Point>::MapToG1(const std::string& s, const Endianness e);

template <typename T>
T Point<T>::HashAndMap(const std::vector<uint8_t>& vec)
{
    return T::HashAndMap(vec);
}
template HerG1Point Point<HerG1Point>::HashAndMap(const std::vector<uint8_t>& vec);

template <typename T>
template <typename P, typename V>
T Point<T>::MulVec(const std::vector<P>& g_vec, const std::vector<V>& s_vec)
{
    return T::MulVec(g_vec, s_vec);
}
template HerG1Point Point<HerG1Point>::MulVec(const std::vector<mclBnG1>& g_vec, const std::vector<mclBnFr>& s_vec);

template <typename T>
T Point<T>::Rand()
{
    return T::Rand();
}
template HerG1Point Point<HerG1Point>::Rand();

template <typename T>
bool Point<T>::IsValid() const
{
    return static_cast<const T*>(this)->IsValid();
}
template bool Point<HerG1Point>::IsValid() const;

template <typename T>
bool Point<T>::IsUnity() const
{
    return static_cast<const T*>(this)->IsUnity();
}
template bool Point<HerG1Point>::IsUnity() const;

template <typename T>
std::vector<uint8_t> Point<T>::GetVch() const
{
    return static_cast<const T*>(this)->GetVch();
}
template std::vector<uint8_t> Point<HerG1Point>::GetVch() const;

template <typename T>
void Point<T>::SetVch(const std::vector<uint8_t>& vec)
{
    return static_cast<T*>(this)->SetVch(vec);
}
template void Point<HerG1Point>::SetVch(const std::vector<uint8_t>& vec);

template <typename T>
std::string Point<T>::GetString(const int& radix) const
{
    return static_cast<const T*>(this)->GetString(radix);
}
template std::string Point<HerG1Point>::GetString(const int& radix) const;

template <typename T>
unsigned int Point<T>::GetSerializeSize() const
{
    return static_cast<const T*>(this)->GetSerializeSize();
}
template unsigned int Point<HerG1Point>::GetSerializeSize() const;

template <typename T>
template <typename Stream>
void Point<T>::Serialize(Stream& s) const
{
    ::Serialize(s, GetVch());
}
template void Point<HerG1Point>::Serialize(CDataStream& s) const;

template <typename T>
template <typename Stream>
void Point<T>::Unserialize(Stream& s)
{
    std::vector<uint8_t> vch;
    ::Unserialize(s, vch);
    SetVch(vch);
}
template void Point<HerG1Point>::Unserialize(CDataStream& s);










