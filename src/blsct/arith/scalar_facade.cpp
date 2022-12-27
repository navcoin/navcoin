// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/mcl/mcl_scalar.h>
#include <blsct/arith/scalar_facade.h>

template <typename T>
ScalarFacade<T>::ScalarFacade()
{
}
template ScalarFacade<MclScalar>::ScalarFacade();

template <typename T>
void ScalarFacade<T>::Init()
{
    T::Init();
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator+(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator+(rhs);
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator-(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator-(rhs);
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator*(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator*(rhs);
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator/(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator/(rhs);
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator|(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator|(rhs);
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator^(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator^(rhs);
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator&(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator&(rhs);
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator~() const
{
    return static_cast<T*>(this)->operator~();
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator<<(unsigned int shift) const
{
    return static_cast<T*>(this)->operator<<(shift);
}

/**
 * Assumes that fr contains a number within int64_t range
 */
template <typename T>
ScalarFacade<T> ScalarFacade<T>::operator>>(unsigned int shift) const
{
    return static_cast<T*>(this)->operator>>(shift);
}

template <typename T>
void ScalarFacade<T>::operator=(const uint64_t& rhs)
{
    return static_cast<T*>(this)->operator=(rhs);
}

template <typename T>
bool ScalarFacade<T>::operator==(const int &rhs) const
{
    return static_cast<T*>(this)->operator==(rhs);
}

template <typename T>
bool ScalarFacade<T>::operator==(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator==(rhs);
}

template <typename T>
bool ScalarFacade<T>::operator!=(const int &rhs) const
{
    return static_cast<T*>(this)->operator!=(rhs);
}

template <typename T>
bool ScalarFacade<T>::operator!=(const ScalarFacade<T> &rhs) const
{
    return static_cast<T*>(this)->operator!=(rhs);
}

template <typename T>
template <typename Underlying>
Underlying ScalarFacade<T>::Underlying() const
{
    return static_cast<T*>(this)->Underlying();
}

template <typename T>
bool ScalarFacade<T>::IsValid() const
{
    return static_cast<T*>(this)->IsValid();
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::Invert() const
{
    return static_cast<T*>(this)->Invert();
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::Negate() const
{
    return static_cast<T*>(this)->Negate();
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::Square() const
{
    return static_cast<T*>(this)->Square();
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::Cube() const
{
    return static_cast<T*>(this)->Cube();
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::Pow(const ScalarFacade<T>& n) const
{
    return static_cast<T*>(this)->Pow(n);
}

template <typename T>
ScalarFacade<T> ScalarFacade<T>::Rand(bool exclude_zero)
{
    return ScalarFacade<T>::Rand(exclude_zero);
}

template <typename T>
uint64_t ScalarFacade<T>::GetUint64() const
{
    return static_cast<T*>(this)->GetUint64();
}

template <typename T>
std::vector<uint8_t> ScalarFacade<T>::GetVch() const
{
    printf("Scalar::GetVch\n");
    return static_cast<T*>(this)->GetVch();
}

template <typename T>
void ScalarFacade<T>::SetVch(const std::vector<uint8_t> &v)
{
    static_cast<T*>(this)->SetVch(v);
}

template <typename T>
void ScalarFacade<T>::SetPow2(int n)
{
    static_cast<T*>(this)->SetPow2(n);
}

template <typename T>
uint256 ScalarFacade<T>::Hash(const int& n) const
{
    return static_cast<T*>(this)->Hash(n);
}

template <typename T>
std::string ScalarFacade<T>::GetString(const int8_t radix) const
{
    return static_cast<T*>(this)->GetString(radix);
}

template <typename T>
bool ScalarFacade<T>::GetSeriBit(const uint8_t& n) const
{
    return static_cast<T*>(this)->GetSeriBit(n);
}

template <typename T>
std::vector<bool> ScalarFacade<T>::ToBinaryVec() const
{
    return static_cast<T*>(this)->ToBinaryVec();
}

template <typename T>
unsigned int ScalarFacade<T>::GetSerializeSize() const
{
    return static_cast<T*>(this)->GetSerializeSize(
        static_cast<T*>(this)->GetVch()
    );
}
