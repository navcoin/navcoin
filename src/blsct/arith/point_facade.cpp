// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/point_facade.h>
#include <blsct/arith/mcl/mcl_g1point.h>
#include <streams.h>

// TODO throw exception to prohibit direct use

template <typename Point>
PointFacade<Point>::PointFacade()
{
}
template PointFacade<MclG1Point>::PointFacade();

template <typename Point>
void PointFacade<Point>::Init()
{
    Point::Init();
}
template void PointFacade<MclG1Point>::Init();

template <typename Point>
template <typename U>
U PointFacade<Point>::Underlying() const
{
    return static_cast<Point*>(this)->Underlying();
}

template <typename Point>
template <typename U>
Point PointFacade<Point>::operator=(const U& rhs)
{
    return static_cast<Point*>(this)->operator=(rhs);
}
template MclG1Point PointFacade<MclG1Point>::operator=(const mclBnG1& rhs);

template <typename Point>
Point PointFacade<Point>::operator+(const Point& rhs) const
{
    return static_cast<const Point*>(this)->operator+(rhs);
}
template MclG1Point PointFacade<MclG1Point>::operator+(const MclG1Point& rhs) const;

template <typename Point>
Point PointFacade<Point>::operator-(const Point& rhs) const
{
    return static_cast<const Point*>(this)->operator-(rhs);
}
template MclG1Point PointFacade<MclG1Point>::operator-(const MclG1Point& rhs) const;

template <typename Point>
template <typename Scalar>
Point PointFacade<Point>::operator*(const Scalar& rhs) const
{
    return static_cast<const Point*>(this)->operator*(rhs);
}
template MclG1Point PointFacade<MclG1Point>::operator*(const MclScalar& rhs) const;

template <typename Point>
bool PointFacade<Point>::operator==(const Point& rhs) const
{
    return static_cast<const Point*>(this)->operator==(rhs);
}
template bool PointFacade<MclG1Point>::operator==(const MclG1Point& rhs) const;

template <typename Point>
bool PointFacade<Point>::operator!=(const Point& rhs) const
{
    return static_cast<const Point*>(this)->operator!=(rhs);
}
template bool PointFacade<MclG1Point>::operator!=(const MclG1Point& rhs) const;

template <typename Point>
Point PointFacade<Point>::Double() const
{
    return static_cast<const Point*>(this)->Double();
}
template MclG1Point PointFacade<MclG1Point>::Double() const;

template <typename Point>
Point PointFacade<Point>::GetBasePoint()
{
    return Point::GetBasePoint();
}
template MclG1Point PointFacade<MclG1Point>::GetBasePoint();

template <typename Point>
Point PointFacade<Point>::MapToG1(const std::vector<uint8_t>& vec, const Endianness e)
{
    return Point::MapToG1(vec, e);
}
template MclG1Point PointFacade<MclG1Point>::MapToG1(const std::vector<uint8_t>& vec, const Endianness e);

template <typename Point>
Point PointFacade<Point>::MapToG1(const std::string& s, const Endianness e)
{
    return Point::MapToG1(s, e);
}
template MclG1Point PointFacade<MclG1Point>::MapToG1(const std::string& s, const Endianness e);

template <typename Point>
Point PointFacade<Point>::HashAndMap(const std::vector<uint8_t>& vec)
{
    return Point::HashAndMap(vec);
}
template MclG1Point PointFacade<MclG1Point>::HashAndMap(const std::vector<uint8_t>& vec);

template <typename Point>
Point PointFacade<Point>::Rand()
{
    return Point::Rand();
}
template MclG1Point PointFacade<MclG1Point>::Rand();

template <typename Point>
bool PointFacade<Point>::IsValid() const
{
    return static_cast<const Point*>(this)->IsValid();
}
template bool PointFacade<MclG1Point>::IsValid() const;

template <typename Point>
bool PointFacade<Point>::IsUnity() const
{
    return static_cast<const Point*>(this)->IsUnity();
}
template bool PointFacade<MclG1Point>::IsUnity() const;

template <typename Point>
std::vector<uint8_t> PointFacade<Point>::GetVch() const
{
    return static_cast<const Point*>(this)->GetVch();
}
template std::vector<uint8_t> PointFacade<MclG1Point>::GetVch() const;

template <typename Point>
void PointFacade<Point>::SetVch(const std::vector<uint8_t>& vec)
{
    return static_cast<Point*>(this)->SetVch(vec);
}
template void PointFacade<MclG1Point>::SetVch(const std::vector<uint8_t>& vec);

template <typename Point>
std::string PointFacade<Point>::GetString(const int& radix) const
{
    return static_cast<const Point*>(this)->GetString(radix);
}
template std::string PointFacade<MclG1Point>::GetString(const int& radix) const;

template <typename Point>
template <typename Scalar>
Scalar PointFacade<Point>::GetHashWithSalt(const uint64_t salt) const
{
    return static_cast<const Point*>(this)->GetHashWithSalt(salt);
}

template <typename Point>
size_t PointFacade<Point>::GetSerializeSize() const
{
    return static_cast<const Point*>(this)->GetSerializeSize();
}
template size_t PointFacade<MclG1Point>::GetSerializeSize() const;

template <typename Point>
template <typename Stream>
void PointFacade<Point>::Serialize(Stream& s) const
{
    return static_cast<const Point*>(this)->Serialize(s);
}
template void PointFacade<MclG1Point>::Serialize(CDataStream& s) const;

template <typename Point>
template <typename Stream>
void PointFacade<Point>::Unserialize(Stream& s)
{
    return static_cast<Point*>(this)->Unserialize(s);
}
template void PointFacade<MclG1Point>::Unserialize(CDataStream& s);
