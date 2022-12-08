// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_MCL_MCL_SCALAR_H
#define NAVCOIN_BLSCT_ARITH_MCL_MCL_SCALAR_H

#include <functional>
#include <stddef.h>
#include <string>
#include <vector>

#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>
#include <blsct/arith/mcl/mcl_initializer.h>
#include <blsct/arith/scalar.h>
#include <hash.h>
#include <serialize.h>
#include <uint256.h>
#include <version.h>

class MclScalar : public Scalar<MclScalar,mclBnFr> {
public:
    static constexpr int WIDTH = 256 / 8;

    MclScalar(const int64_t& n = 0);
    MclScalar(const std::vector<uint8_t>& v);
    MclScalar(const mclBnFr& n_fr);
    MclScalar(const uint256& n);
    MclScalar(const std::string& s, int radix);

    static void Init();

    MclScalar ApplyBitwiseOp(const MclScalar& a, const MclScalar& b,
                             std::function<uint8_t(uint8_t, uint8_t)> op) const;

    void operator=(const uint64_t& n);

    MclScalar operator+(const MclScalar& b) const;
    MclScalar operator-(const MclScalar& b) const;
    MclScalar operator*(const MclScalar& b) const;
    MclScalar operator/(const MclScalar& b) const;
    MclScalar operator|(const MclScalar& b) const;
    MclScalar operator^(const MclScalar& b) const;
    MclScalar operator&(const MclScalar& b) const;
    MclScalar operator~() const;
    MclScalar operator<<(unsigned int shift) const;
    MclScalar operator>>(unsigned int shift) const;

    bool operator==(const MclScalar& b) const;
    bool operator==(const int& b) const;
    bool operator!=(const MclScalar& b) const;
    bool operator!=(const int& b) const;

    bool IsValid() const;

    MclScalar Invert() const;
    MclScalar Negate() const;
    MclScalar Square() const;
    MclScalar Cube() const;
    MclScalar Pow(const MclScalar& n) const;

    static MclScalar Rand(bool exclude_zero = false);

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

    mclBnFr m_fr;
};

#endif // NAVCOIN_BLSCT_ARITH_MCL_MCL_SCALAR_H
