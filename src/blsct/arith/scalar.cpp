// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/scalar.h>
#include <blsct/arith/her/her_scalar.h>

//#include <stddef.h>
// #include <hash.h>
// #include <serialize.h>
// #include <uint256.h>
// #include <version.h>

template <typename S>
Scalar<S>::Scalar()
{
}
template Scalar<HerScalar>::Scalar();

template <typename S>
void Scalar<S>::Init()
{
    S::Init();
}

template <typename S>
Scalar<S> Scalar<S>::operator+(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator+(rhs);
}

template <typename S>
Scalar<S> Scalar<S>::operator-(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator-(rhs);
}

template <typename S>
Scalar<S> Scalar<S>::operator*(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator*(rhs);
}

template <typename S>
Scalar<S> Scalar<S>::operator/(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator/(rhs);
}

template <typename S>
Scalar<S> Scalar<S>::operator|(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator|(rhs);
}

template <typename S>
Scalar<S> Scalar<S>::operator^(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator^(rhs);
}

template <typename S>
Scalar<S> Scalar<S>::operator&(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator&(rhs);
}

template <typename S>
Scalar<S> Scalar<S>::operator~() const
{
    return static_cast<S*>(this)->operator~();
}

template <typename S>
Scalar<S> Scalar<S>::operator<<(unsigned int shift) const
{
    return static_cast<S*>(this)->operator<<(shift);
}

/**
 * Assumes that fr contains a number within int64_t range
 */
template <typename S>
Scalar<S> Scalar<S>::operator>>(unsigned int shift) const
{
    return static_cast<S*>(this)->operator>>(shift);
}

template <typename S>
void Scalar<S>::operator=(const uint64_t& rhs)
{
    return static_cast<S*>(this)->operator=(rhs);
}

template <typename S>
bool Scalar<S>::operator==(const int &rhs) const
{
    return static_cast<S*>(this)->operator==(rhs);
}

template <typename S>
bool Scalar<S>::operator==(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator==(rhs);
}

template <typename S>
bool Scalar<S>::operator!=(const int &rhs) const
{
    return static_cast<S*>(this)->operator!=(rhs);
}

template <typename S>
bool Scalar<S>::operator!=(const Scalar<S> &rhs) const
{
    return static_cast<S*>(this)->operator!=(rhs);
}

template <typename S>
template <typename SV>
SV Scalar<S>::Underlying() const
{
    return static_cast<S*>(this)->Underlying();
}

template <typename S>
bool Scalar<S>::IsValid() const
{
    return static_cast<S*>(this)->IsValid();
}

template <typename S>
Scalar<S> Scalar<S>::Invert() const
{
    return static_cast<S*>(this)->Invert();
}

template <typename S>
Scalar<S> Scalar<S>::Negate() const
{
    return static_cast<S*>(this)->Negate();
}

template <typename S>
Scalar<S> Scalar<S>::Square() const
{
    return static_cast<S*>(this)->Square();
}

template <typename S>
Scalar<S> Scalar<S>::Cube() const
{
    return static_cast<S*>(this)->Cube();
}

template <typename S>
Scalar<S> Scalar<S>::Pow(const Scalar& n) const
{
    return static_cast<S*>(this)->Pow(n);
}

template <typename S>
Scalar<S> Scalar<S>::Rand(bool exclude_zero)
{
    return Scalar<S>::Rand(exclude_zero);
}

template <typename S>
uint64_t Scalar<S>::GetUint64() const
{
    return static_cast<S*>(this)->GetUint64();
}

template <typename S>
std::vector<uint8_t> Scalar<S>::GetVch() const
{
    printf("Scalar::GetVch\n");
    return static_cast<S*>(this)->GetVch();
}

template <typename S>
void Scalar<S>::SetVch(const std::vector<uint8_t> &v)
{
    static_cast<S*>(this)->SetVch(v);
}

template <typename S>
void Scalar<S>::SetPow2(int n)
{
    static_cast<S*>(this)->SetPow2(n);
}

template <typename S>
uint256 Scalar<S>::Hash(const int& n) const
{
    return static_cast<S*>(this)->Hash(n);
}

template <typename S>
std::string Scalar<S>::GetString(const int8_t radix) const
{
    return static_cast<S*>(this)->GetString(radix);
}

template <typename S>
bool Scalar<S>::GetSeriBit(const uint8_t& n) const
{
    return static_cast<S*>(this)->GetSeriBit(n);
}

template <typename S>
std::vector<bool> Scalar<S>::ToBinaryVec() const
{
    return static_cast<S*>(this)->ToBinaryVec();
}

template <typename S>
unsigned int Scalar<S>::GetSerializeSize() const
{
    return static_cast<S*>(this)->GetSerializeSize(
        static_cast<S*>(this)->GetVch()
    );
}
