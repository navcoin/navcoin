// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_SCALAR_H
#define NAVCOIN_BLSCT_ARITH_SCALAR_H

#include <functional>
#include <stddef.h>
#include <string>
#include <vector>

#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>
#include <hash.h>
#include <serialize.h>
#include <uint256.h>
#include <version.h>

// T = MclScalar, V = mclBnFr
template <typename T, typename V>
class Scalar {
public:
    static constexpr int WIDTH = 256 / 8;

    Scalar<T,V>(const int64_t& n = 0);
    Scalar<T,V>(const std::vector<uint8_t>& v);
    Scalar<T,V>(const V& n_fr);
    Scalar<T,V>(const uint256& n);
    Scalar<T,V>(const std::string& s, int radix);

    static void Init();

    void operator=(const uint64_t& n);

    Scalar<T,V> operator+(const Scalar<T,V>& b) const;
    Scalar<T,V> operator-(const Scalar<T,V>& b) const;
    Scalar<T,V> operator*(const Scalar<T,V>& b) const;
    Scalar<T,V> operator/(const Scalar<T,V>& b) const;
    Scalar<T,V> operator|(const Scalar<T,V>& b) const;
    Scalar<T,V> operator^(const Scalar<T,V>& b) const;
    Scalar<T,V> operator&(const Scalar<T,V>& b) const;
    Scalar<T,V> operator~() const;
    Scalar<T,V> operator<<(unsigned int shift) const;
    Scalar<T,V> operator>>(unsigned int shift) const;

    bool operator==(const Scalar<T,V>& b) const;
    bool operator==(const int& b) const;
    bool operator!=(const Scalar<T,V>& b) const;
    bool operator!=(const int& b) const;

    bool IsValid() const;

    Scalar<T,V> Invert() const;
    Scalar<T,V> Negate() const;
    Scalar<T,V> Square() const;
    Scalar<T,V> Cube() const;
    Scalar<T,V> Pow(const Scalar& n) const;

    static Scalar<T,V> Rand(bool exclude_zero = false);

    int64_t GetInt64() const;

    std::vector<uint8_t> GetVch() const;
    void SetVch(const std::vector<uint8_t>& v);

    /**
     * Sets 2^n to the instance
     */
    void SetPow2(int n);

    uint256 Hash(const int& n) const;

    std::string GetString(const int8_t radix = 16) const;

    bool GetBit(uint8_t n) const;
    std::vector<bool> GetBits() const;

    unsigned int GetSerializeSize() const;

    template <typename Stream>
    void Serialize(Stream& s) const
    {
        ::Serialize(s, GetVch());
    }

    template <typename Stream>
    void Unserialize(Stream& s)
    {
        std::vector<uint8_t> vch;
        ::Unserialize(s, vch);
        SetVch(vch);
    }

    V m_value;
};

#endif // NAVCOIN_BLSCT_ARITH_SCALAR_H