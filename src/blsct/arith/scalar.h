// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_SCALAR_H
#define NAVCOIN_BLSCT_ARITH_SCALAR_H

#include <string>
#include <vector>

template <typename T>
class Scalar {
public:
    static constexpr int WIDTH = 256 / 8;

    Scalar<T>(const int64_t& n = 0);
    Scalar<T>(const std::vector<uint8_t>& v);
    Scalar<T>(const T& n_fr);
    Scalar<T>(const uint256& n);
    Scalar<T>(const std::string& s, int radix);

    static void Init();

    void operator=(const uint64_t& n);

    Scalar<T> operator+(const Scalar<T>& rhs) const;
    Scalar<T> operator-(const Scalar<T>& rhs) const;
    Scalar<T> operator*(const Scalar<T>& rhs) const;
    Scalar<T> operator/(const Scalar<T>& rhs) const;
    Scalar<T> operator|(const Scalar<T>& rhs) const;
    Scalar<T> operator^(const Scalar<T>& rhs) const;
    Scalar<T> operator&(const Scalar<T>& rhs) const;
    Scalar<T> operator~() const;
    Scalar<T> operator<<(unsigned int shift) const;
    Scalar<T> operator>>(unsigned int shift) const;

    bool operator==(const Scalar<T>& rhs) const;
    bool operator==(const int& rhs) const;
    bool operator!=(const Scalar<T>& rhs) const;
    bool operator!=(const int& rhs) const;

    bool IsValid() const;

    Scalar<T> Invert() const;
    Scalar<T> Negate() const;
    Scalar<T> Square() const;
    Scalar<T> Cube() const;
    Scalar<T> Pow(const Scalar<T>& n) const;

    static Scalar<T> Rand(bool exclude_zero = false);

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
};

#endif // NAVCOIN_BLSCT_ARITH_SCALAR_H