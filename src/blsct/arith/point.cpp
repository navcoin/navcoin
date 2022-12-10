// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/point.h>

template <typename P>
Point<P>::Point()
{
    static_cast<Point<P>*>(this)->Constructor();
}

template <typename P>
Point<P>::Point(const std::vector<uint8_t>& v)
{
    static_cast<Point<P>*>(this)->Constructor(v);
}

template <typename P>
Point<P>::Point(const uint256& b)
{
    static_cast<Point<P>*>(this)->Constructor(b);
}

template <typename P>
Point<P>::Point(const P& p)
{
    static_cast<Point<P>*>(this)->Constructor(p);
}

template <typename P>
void Point<P>::Init()
{
    Point<P>::Init();
}

template <typename P>
Point<P> Point<P>::operator=(const P& rhs)
{
    return static_cast<Point<P>*>(this)->operator=(rhs);
}

template <typename P>
Point<P> Point<P>::operator+(const Point<P>& rhs) const
{
    return static_cast<Point<P>*>(this)->operator+(rhs);
}

template <typename P>
Point<P> Point<P>::operator-(const Point<P>& rhs) const
{
    return static_cast<Point<P>*>(this)->operator-(rhs);
}

template <typename P>
template <typename V>
Point<P> Point<P>::operator*(const Scalar<V>& rhs) const
{
    return static_cast<Point<P>*>(this)->operator*(rhs);
}

template <typename P>
bool Point<P>::operator==(const Point<P>& rhs) const
{
    return static_cast<Point<P>*>(this)->operator==(rhs);
}

template <typename P>
bool Point<P>::operator!=(const Point<P>& rhs) const
{
    return static_cast<Point<P>*>(this)->operator!=(rhs);
}

template <typename P> Point<P> Point<P>::operator-(const Point<P>& rhs) const
{
    return static_cast<Point<P>*>(this)->operator-(rhs);
}


template <typename P>
Point<P> Point<P>::Double() const
{
    return static_cast<Point<P>*>(this)->Double();
}

template <typename P>
Point<P> Point<P>::GetBasePoint()
{
    return Point<P>::GetBasePoint();
}

template <typename P>
Point<P> Point<P>::MapToG1(const std::vector<uint8_t>& vec, const Endianness e = Endianness::Little)
{
    return Point<P>::MapToG1(vec, e);
}

template <typename P>
Point<P> Point<P>::MapToG1(const std::string& s, const Endianness e = Endianness::Little)
{
    return Point<P>::MapToG1(s, e);
}

template <typename P>
Point<P> Point<P>::HashAndMap(const std::vector<uint8_t>& vec)
{
    return Point<P>::HashAndMap(vec);
}

template <typename P>
template <typename V>
Point<P> Point<P>::MulVec(const std::vector<P>& g_vec, const std::vector<V>& s_vec)
{
    return Point<P>::MulVec(g_vec, s_vec);
}

template <typename P>
Point<P> Point<P>::Rand()
{
    return Point<P>::Range();
}

template <typename P>
bool Point<P>::IsValid() const
{
    return static_cast<Point<P>*>(this)->IsValid();
}

template <typename P>
bool Point<P>::IsUnity() const
{
    return static_cast<Point<P>*>(this)->IsUnity();
}

template <typename P>
std::vector<uint8_t> Point<P>::GetVch() const
{
    return static_cast<Point<P>*>(this)->GetVch();
}

template <typename P>
void Point<P>::SetVch(const std::vector<uint8_t>& vec)
{
    return static_cast<Point<P>*>(this)->SetVch(vec);
}

template <typename P>
std::string Point<P>::GetString(const int& radix = 16) const
{
    return static_cast<Point<P>*>(this)->GetString(radix);
}

template <typename P>
unsigned int Point<P>::GetSerializeSize() const
{
    return static_cast<Point<P>*>(this)->GetSerializedSize(radix);
}

template <typename P>
template <typename Stream>
void Point<P>::Serialize(Stream& s) const
{
    ::Serialize(s, GetVch());
}

template <typename P>
template <typename Stream>
void Point<P>::Unserialize(Stream& s)
{
    std::vector<uint8_t> vch;
    ::Unserialize(s, vch);
    SetVch(vch);
}










