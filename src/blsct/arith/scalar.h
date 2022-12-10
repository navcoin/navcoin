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
template <typename V>
class Scalar {
public:
    static constexpr int WIDTH = 256 / 8;

    Scalar<V>(const int64_t& n = 0);
    Scalar<V>(const std::vector<uint8_t>& v);
    Scalar<V>(const V& n_fr);
    Scalar<V>(const uint256& n);
    Scalar<V>(const std::string& s, int radix);

    static void Init();

    void operator=(const uint64_t& n);

    Scalar<V> operator+(const Scalar<V>& rhs) const;
    Scalar<V> operator-(const Scalar<V>& rhs) const;
    Scalar<V> operator*(const Scalar<V>& rhs) const;
    Scalar<V> operator/(const Scalar<V>& rhs) const;
    Scalar<V> operator|(const Scalar<V>& rhs) const;
    Scalar<V> operator^(const Scalar<V>& rhs) const;
    Scalar<V> operator&(const Scalar<V>& rhs) const;
    Scalar<V> operator~() const;
    Scalar<V> operator<<(unsigned int shift) const;
    Scalar<V> operator>>(unsigned int shift) const;

    bool operator==(const Scalar<V>& rhs) const;
    bool operator==(const int& rhs) const;
    bool operator!=(const Scalar<V>& rhs) const;
    bool operator!=(const int& rhs) const;

    bool IsValid() const;

    Scalar<V> Invert() const;
    Scalar<V> Negate() const;
    Scalar<V> Square() const;
    Scalar<V> Cube() const;
    Scalar<V> Pow(const Scalar<V>& n) const;

    static Scalar<V> Rand(bool exclude_zero = false);

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