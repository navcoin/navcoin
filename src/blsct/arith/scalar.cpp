// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/scalar.h>

template <typename V>
Scalar<V>::Scalar(const int64_t& n)
{
    static_cast<Scalar<V>*>(this)->Constructor(n);
}

template <typename V>
Scalar<V>::Scalar(const std::vector<uint8_t> &vec)
{
    static_cast<Scalar<V>*>(this)->Constructor(vec);
}

template <typename V>
Scalar<V>::Scalar(const V& v)
{
    static_cast<Scalar<V>*>(this)->Constructor(v);
}

template <typename V>
Scalar<V>::Scalar(const uint256& n)
{
    static_cast<Scalar<V>*>(this)->Constructor(n);
}

template <typename V>
Scalar<V>::Scalar(const std::string& s, int radix)
{
    static_cast<Scalar<V>*>(this)->Constructor(s, radix);
}

template <typename V>
void Scalar<V>::Init()
{
    Scalar<V>::Init();
}

template <typename V>
Scalar<V> Scalar<V>::operator+(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator+(rhs);
}

template <typename V>
Scalar<V> Scalar<V>::operator-(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator-(rhs);
}

template <typename V>
Scalar<V> Scalar<V>::operator*(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator*(rhs);
}

template <typename V>
Scalar<V> Scalar<V>::operator/(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator/(rhs);
}

template <typename V>
Scalar<V> Scalar<V>::operator|(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator|(rhs);
}

template <typename V>
Scalar<V> Scalar<V>::operator^(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator^(rhs);
}

template <typename V>
Scalar<V> Scalar<V>::operator&(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator&(rhs);
}

template <typename V>
Scalar<V> Scalar<V>::operator~() const
{
    return static_cast<Scalar<V>*>(this)->operator~();
}

template <typename V>
Scalar<V> Scalar<V>::operator<<(unsigned int shift) const
{
    return static_cast<Scalar<V>*>(this)->operator<<(shift);
}

/**
 * Assumes that fr contains a number within int64_t range
 */
template <typename V>
Scalar<V> Scalar<V>::operator>>(unsigned int shift) const
{
    return static_cast<Scalar<V>*>(this)->operator>>(shift);
}

template <typename V>
void Scalar<V>::operator=(const uint64_t& rhs)
{
    return static_cast<Scalar<V>*>(this)->operator=(rhs);
}

template <typename V>
bool Scalar<V>::operator==(const int &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator==(rhs);
}

template <typename V>
bool Scalar<V>::operator==(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator==(rhs);
}

template <typename V>
bool Scalar<V>::operator!=(const int &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator!=(rhs);
}

template <typename V>
bool Scalar<V>::operator!=(const Scalar<V> &rhs) const
{
    return static_cast<Scalar<V>*>(this)->operator!=(rhs);
}

template <typename V>
bool Scalar<V>::IsValid() const
{
    return static_cast<Scalar<V>*>(this)->IsValid();
}

template <typename V>
Scalar<V> Scalar<V>::Invert() const
{
    return static_cast<Scalar<V>*>(this)->Invert();
}

template <typename V>
Scalar<V> Scalar<V>::Negate() const
{
    return static_cast<Scalar<V>*>(this)->Negate();
}

template <typename V>
Scalar<V> Scalar<V>::Square() const
{
    return static_cast<Scalar<V>*>(this)->Square();
}

template <typename V>
Scalar<V> Scalar<V>::Cube() const
{
    return static_cast<Scalar<V>*>(this)->Cube();
}

template <typename V>
Scalar<V> Scalar<V>::Pow(const Scalar& n) const
{
    return static_cast<Scalar<V>*>(this)->Pow(n);
}

template <typename V>
Scalar<V> Scalar<V>::Rand(bool exclude_zero)
{
    return static_cast<Scalar<V>*>(this)->Rand(exclude_zero);
}

template <typename V>
int64_t Scalar<V>::GetInt64() const
{
    return static_cast<Scalar<V>*>(this)->GetInt64();
}

template <typename V>
std::vector<uint8_t> Scalar<V>::GetVch() const
{
    return static_cast<Scalar<V>*>(this)->GetVch();
}

template <typename V>
void Scalar<V>::SetVch(const std::vector<uint8_t> &v)
{
    static_cast<Scalar<V>*>(this)->SetVch(v);
}

template <typename V>
void Scalar<V>::SetPow2(int n)
{
    static_cast<Scalar<V>*>(this)->SetPow2(n);
}

template <typename V>
uint256 Scalar<V>::Hash(const int& n) const
{
    return static_cast<Scalar<V>*>(this)->Hash(n);
}

template <typename V>
std::string Scalar<V>::GetString(const int8_t radix) const
{
    return static_cast<Scalar<V>*>(this)->GetString(radix);
}

template <typename V>
std::vector<bool> Scalar<V>::GetBits() const
{
    return static_cast<Scalar<V>*>(this)->GetBits();
}

/**
 * Since GetVch returns 32-byte vector, maximum bit index is 8 * 32 - 1 = 255
 */
template <typename V>
bool Scalar<V>::GetBit(uint8_t n) const
{
    return static_cast<Scalar<V>*>(this)->GetBit(n);
}

template <typename V>
unsigned int Scalar<V>::GetSerializeSize() const
{
    return static_cast<Scalar<V>*>(this)->GetSerializeSize(
        static_cast<Scalar<V>*>(this)->GetVch()
    );
}
