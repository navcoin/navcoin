// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/scalar.h>

template <typename T, typename V>
Scalar<T,V>::Scalar(const int64_t& n)
{
    static_case<T*>(this)->Constructor(n);
}

template <typename T, typename V>
Scalar<T,V>::Scalar(const std::vector<uint8_t> &vec)
{
    static_case<T*>(this)->Constructor(vec);
}

template <typename T, typename V>
Scalar<T,V>::Scalar(const V& v)
{
    static_case<T*>(this)->Constructor(v);
}

template <typename T, typename V>
Scalar<T,V>::Scalar(const uint256& n)
{
    static_case<T*>(this)->Constructor(n);
}

template <typename T, typename V>
Scalar<T,V>::Scalar(const std::string& s, int radix)
{
    static_case<T*>(this)->Constructor(s, radix);
}

template <typename T, typename V>
void Scalar<T,V>::Init()
{
    T::Init();
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator+(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator+(b);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator-(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator-(b);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator*(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator*(b);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator/(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator/(b);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator|(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator|(b);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator^(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator^(b);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator&(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator&(b);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator~() const
{
    return static_cast<T*>(this)->operator~(b);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator<<(unsigned int shift) const
{
    return static_cast<T*>(this)->operator<<(shift);
}

/**
 * Assumes that fr contains a number within int64_t range
 */
template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::operator>>(unsigned int shift) const
{
    return static_cast<T*>(this)->operator>>(shift);
}

template <typename T, typename V>
void Scalar<T,V>::operator=(const uint64_t& n)
{
    return static_cast<T*>(this)->operator=(n);
}

template <typename T, typename V>
bool Scalar<T,V>::operator==(const int &b) const
{
    return static_cast<T*>(this)->operator==(b);
}

template <typename T, typename V>
bool Scalar<T,V>::operator==(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator==(b);
}

template <typename T, typename V>
bool Scalar<T,V>::operator!=(const int &b) const
{
    return static_cast<T*>(this)->operator!=(b);
}

template <typename T, typename V>
bool Scalar<T,V>::operator!=(const Scalar<T,V> &b) const
{
    return static_cast<T*>(this)->operator!=(b);
}

template <typename T, typename V>
bool Scalar<T,V>::IsValid() const
{
    return static_cast<T*>(this)->IsValid();
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::Invert() const
{
    return static_cast<T*>(this)->Invert();
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::Negate() const
{
    return static_cast<T*>(this)->Negate();
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::Square() const
{
    return static_cast<T*>(this)->Square();
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::Cube() const
{
    return static_cast<T*>(this)->Cube();
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::Pow(const Scalar& n) const
{
    return static_cast<T*>(this)->Pow(n);
}

template <typename T, typename V>
Scalar<T,V> Scalar<T,V>::Rand(bool exclude_zero)
{
    return static_cast<T*>(this)->Rand(exclude_zero);
}

template <typename T, typename V>
int64_t Scalar<T,V>::GetInt64() const
{
    return static_cast<T*>(this)->GetInt64();
}

template <typename T, typename V>
std::vector<uint8_t> Scalar<T,V>::GetVch() const
{
    return static_cast<T*>(this)->GetVch();
}

template <typename T, typename V>
void Scalar<T,V>::SetVch(const std::vector<uint8_t> &v)
{
    static_cast<T*>(this)->SetVch(v);
}

template <typename T, typename V>
void Scalar<T,V>::SetPow2(int n)
{
    static_cast<T*>(this)->SetPow2(n);
}

template <typename T, typename V>
uint256 Scalar<T,V>::Hash(const int& n) const
{
    return static_cast<T*>(this)->Hash(n);
}

template <typename T, typename V>
std::string Scalar<T,V>::GetString(const int8_t radix) const
{
    return static_cast<T*>(this)->GetString(radix);
}

template <typename T, typename V>
std::vector<bool> Scalar<T,V>::GetBits() const
{
    return static_cast<T*>(this)->GetBits();
}

/**
 * Since GetVch returns 32-byte vector, maximum bit index is 8 * 32 - 1 = 255
 */
template <typename T, typename V>
bool Scalar<T,V>::GetBit(uint8_t n) const
{
    return static_cast<T*>(this)->GetBit(n);
}

template <typename T, typename V>
unsigned int Scalar<T,V>::GetSerializeSize() const
{
    return static_cast<T*>(this)->GetSerializeSize(
        static_case<T*>(this)->GetVch()
    );
}
