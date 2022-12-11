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

template <typename T>
Scalar<T>::Scalar()
{
}
template Scalar<HerScalar>::Scalar();

template <typename T>
void Scalar<T>::Init()
{
    T::Init();
}

template <typename T>
Scalar<T> Scalar<T>::operator+(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator+(rhs);
}

template <typename T>
Scalar<T> Scalar<T>::operator-(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator-(rhs);
}

template <typename T>
Scalar<T> Scalar<T>::operator*(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator*(rhs);
}

template <typename T>
Scalar<T> Scalar<T>::operator/(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator/(rhs);
}

template <typename T>
Scalar<T> Scalar<T>::operator|(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator|(rhs);
}

template <typename T>
Scalar<T> Scalar<T>::operator^(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator^(rhs);
}

template <typename T>
Scalar<T> Scalar<T>::operator&(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator&(rhs);
}

template <typename T>
Scalar<T> Scalar<T>::operator~() const
{
    return static_cast<T*>(this)->operator~();
}

template <typename T>
Scalar<T> Scalar<T>::operator<<(unsigned int shift) const
{
    return static_cast<T*>(this)->operator<<(shift);
}

/**
 * Assumes that fr contains a number within int64_t range
 */
template <typename T>
Scalar<T> Scalar<T>::operator>>(unsigned int shift) const
{
    return static_cast<T*>(this)->operator>>(shift);
}

template <typename T>
void Scalar<T>::operator=(const uint64_t& rhs)
{
    return static_cast<T*>(this)->operator=(rhs);
}

template <typename T>
bool Scalar<T>::operator==(const int &rhs) const
{
    return static_cast<T*>(this)->operator==(rhs);
}

template <typename T>
bool Scalar<T>::operator==(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator==(rhs);
}

template <typename T>
bool Scalar<T>::operator!=(const int &rhs) const
{
    return static_cast<T*>(this)->operator!=(rhs);
}

template <typename T>
bool Scalar<T>::operator!=(const Scalar<T> &rhs) const
{
    return static_cast<T*>(this)->operator!=(rhs);
}

template <typename T>
bool Scalar<T>::IsValid() const
{
    return static_cast<T*>(this)->IsValid();
}

template <typename T>
Scalar<T> Scalar<T>::Invert() const
{
    return static_cast<T*>(this)->Invert();
}

template <typename T>
Scalar<T> Scalar<T>::Negate() const
{
    return static_cast<T*>(this)->Negate();
}

template <typename T>
Scalar<T> Scalar<T>::Square() const
{
    return static_cast<T*>(this)->Square();
}

template <typename T>
Scalar<T> Scalar<T>::Cube() const
{
    return static_cast<T*>(this)->Cube();
}

template <typename T>
Scalar<T> Scalar<T>::Pow(const Scalar& n) const
{
    return static_cast<T*>(this)->Pow(n);
}

template <typename T>
Scalar<T> Scalar<T>::Rand(bool exclude_zero)
{
    return Scalar<T>::Rand(exclude_zero);
}

template <typename T>
int64_t Scalar<T>::GetInt64() const
{
    return static_cast<T*>(this)->GetInt64();
}

template <typename T>
std::vector<uint8_t> Scalar<T>::GetVch() const
{
    return static_cast<T*>(this)->GetVch();
}

template <typename T>
void Scalar<T>::SetVch(const std::vector<uint8_t> &v)
{
    static_cast<T*>(this)->SetVch(v);
}

template <typename T>
void Scalar<T>::SetPow2(int n)
{
    static_cast<T*>(this)->SetPow2(n);
}

template <typename T>
uint256 Scalar<T>::Hash(const int& n) const
{
    return static_cast<T*>(this)->Hash(n);
}

template <typename T>
std::string Scalar<T>::GetString(const int8_t radix) const
{
    return static_cast<T*>(this)->GetString(radix);
}

template <typename T>
std::vector<bool> Scalar<T>::GetBits() const
{
    return static_cast<T*>(this)->GetBits();
}

/**
 * Since GetVch returns 32-byte vector, maximum bit index is 8 * 32 - 1 = 255
 */
template <typename T>
bool Scalar<T>::GetBit(uint8_t n) const
{
    return static_cast<T*>(this)->GetBit(n);
}

template <typename T>
unsigned int Scalar<T>::GetSerializeSize() const
{
    return static_cast<T*>(this)->GetSerializeSize(
        static_cast<T*>(this)->GetVch()
    );
}
