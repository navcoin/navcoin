// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/point.h>
#include <blsct/arith/her/her_g1point.h>
#include <streams.h>

template <typename P>
Point<P>::Point()
{
}
template Point<HerG1Point>::Point();

template <typename P>
void Point<P>::Init()
{
    P::Init();
}
template void Point<HerG1Point>::Init();

template <typename P>
template <typename PV>
PV Point<P>::Underlying() const
{
    return static_cast<P*>(this)->Underlying();
}

template <typename P>
template <typename PV>
P Point<P>::operator=(const PV& rhs)
{
    return static_cast<P*>(this)->operator=(rhs);
}
template HerG1Point Point<HerG1Point>::operator=(const mclBnG1& rhs);

template <typename P>
P Point<P>::operator+(const P& rhs) const
{
    return static_cast<const P*>(this)->operator+(rhs);
}
template HerG1Point Point<HerG1Point>::operator+(const HerG1Point& rhs) const;

template <typename P>
P Point<P>::operator-(const P& rhs) const
{
    return static_cast<const P*>(this)->operator-(rhs);
}
template HerG1Point Point<HerG1Point>::operator-(const HerG1Point& rhs) const;

template <typename P>
template <typename S>
P Point<P>::operator*(const S& rhs) const
{
    return static_cast<const P*>(this)->operator*(rhs);
}
template HerG1Point Point<HerG1Point>::operator*(const HerScalar& rhs) const;

template <typename P>
bool Point<P>::operator==(const P& rhs) const
{
    return static_cast<const P*>(this)->operator==(rhs);
}
template bool Point<HerG1Point>::operator==(const HerG1Point& rhs) const;

template <typename P>
bool Point<P>::operator!=(const P& rhs) const
{
    return static_cast<const P*>(this)->operator!=(rhs);
}
template bool Point<HerG1Point>::operator!=(const HerG1Point& rhs) const;

template <typename P>
P Point<P>::Double() const
{
    return static_cast<const P*>(this)->Double();
}
template HerG1Point Point<HerG1Point>::Double() const;

template <typename P>
P Point<P>::GetBasePoint()
{
    return P::GetBasePoint();
}
template HerG1Point Point<HerG1Point>::GetBasePoint();

template <typename P>
P Point<P>::MapToG1(const std::vector<uint8_t>& vec, const Endianness e)
{
    return P::MapToG1(vec, e);
}
template HerG1Point Point<HerG1Point>::MapToG1(const std::vector<uint8_t>& vec, const Endianness e);

template <typename P>
P Point<P>::MapToG1(const std::string& s, const Endianness e)
{
    return P::MapToG1(s, e);
}
template HerG1Point Point<HerG1Point>::MapToG1(const std::string& s, const Endianness e);

template <typename P>
P Point<P>::HashAndMap(const std::vector<uint8_t>& vec)
{
    return P::HashAndMap(vec);
}
template HerG1Point Point<HerG1Point>::HashAndMap(const std::vector<uint8_t>& vec);

template <typename P>
P Point<P>::Rand()
{
    return P::Rand();
}
template HerG1Point Point<HerG1Point>::Rand();

template <typename P>
bool Point<P>::IsValid() const
{
    return static_cast<const P*>(this)->IsValid();
}
template bool Point<HerG1Point>::IsValid() const;

template <typename P>
bool Point<P>::IsUnity() const
{
    return static_cast<const P*>(this)->IsUnity();
}
template bool Point<HerG1Point>::IsUnity() const;

template <typename P>
std::vector<uint8_t> Point<P>::GetVch() const
{
    return static_cast<const P*>(this)->GetVch();
}
template std::vector<uint8_t> Point<HerG1Point>::GetVch() const;

template <typename P>
void Point<P>::SetVch(const std::vector<uint8_t>& vec)
{
    return static_cast<P*>(this)->SetVch(vec);
}
template void Point<HerG1Point>::SetVch(const std::vector<uint8_t>& vec);

template <typename P>
std::string Point<P>::GetString(const int& radix) const
{
    return static_cast<const P*>(this)->GetString(radix);
}
template std::string Point<HerG1Point>::GetString(const int& radix) const;

template <typename P>
template <typename S>
S Point<P>::GetHashWithSalt(const uint64_t salt) const
{
    CHashWriter hasher(0,0);
    hasher << *this;
    hasher << salt;
    S hash(hasher.GetHash());
    return hash;
}

template <typename P>
size_t Point<P>::GetSerializeSize() const
{
    return static_cast<const P*>(this)->GetSerializeSize();
}
template size_t Point<HerG1Point>::GetSerializeSize() const;

template <typename P>
template <typename Stream>
void Point<P>::Serialize(Stream& s) const
{
    ::Serialize(s, GetVch());
}
template void Point<HerG1Point>::Serialize(CDataStream& s) const;

template <typename P>
template <typename Stream>
void Point<P>::Unserialize(Stream& s)
{
    std::vector<uint8_t> vch;
    ::Unserialize(s, vch);
    SetVch(vch);
}
template void Point<HerG1Point>::Unserialize(CDataStream& s);










