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
#include <serialize.h>
#include <uint256.h>

template <typename S>
class Scalar {
public:
    Scalar();

    static void Init();

    void operator=(const uint64_t& n);

    Scalar<S> operator+(const Scalar<S>& rhs) const;
    Scalar<S> operator-(const Scalar<S>& rhs) const;
    Scalar<S> operator*(const Scalar<S>& rhs) const;
    Scalar<S> operator/(const Scalar<S>& rhs) const;
    Scalar<S> operator|(const Scalar<S>& rhs) const;
    Scalar<S> operator^(const Scalar<S>& rhs) const;
    Scalar<S> operator&(const Scalar<S>& rhs) const;
    Scalar<S> operator~() const;
    Scalar<S> operator<<(unsigned int shift) const;
    Scalar<S> operator>>(unsigned int shift) const;

    bool operator==(const Scalar<S>& rhs) const;
    bool operator==(const int& rhs) const;
    bool operator!=(const Scalar<S>& rhs) const;
    bool operator!=(const int& rhs) const;

    template <typename SV>
    SV Underlying() const;

    bool IsValid() const;

    Scalar<S> Invert() const;
    Scalar<S> Negate() const;
    Scalar<S> Square() const;
    Scalar<S> Cube() const;
    Scalar<S> Pow(const Scalar<S>& n) const;

    static Scalar<S> Rand(bool exclude_zero = false);

    uint64_t GetUint64() const;

    std::vector<uint8_t> GetVch() const;
    void SetVch(const std::vector<uint8_t>& v);

    /**
     * Sets 2^n to the instance
     */
    void SetPow2(int n);

    uint256 Hash(const int& n) const;

    std::string GetString(const int8_t radix = 16) const;

    bool GetSeriBit(const uint8_t& n) const;
    std::vector<bool> ToBinaryVec() const;

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
