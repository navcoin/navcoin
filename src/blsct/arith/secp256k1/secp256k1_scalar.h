// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_SCALAR_H
#define NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_SCALAR_H

#include <secp256k1_export.h>

#include <array>
#include <functional>
#include <stddef.h>
#include <string>
#include <vector>

#include <hash.h>
#include <serialize.h>
#include <streams.h>
#include <uint256.h>
#include <version.h>

using namespace std::literals::string_literals;

class Secp256k1Scalar
{
public:
    using Underlying = secp256k1_scalar;

    Secp256k1Scalar();
    Secp256k1Scalar(const uint32_t& n);
    Secp256k1Scalar(const std::vector<uint8_t>& v);
    Secp256k1Scalar(const Underlying& other_underlying);
    Secp256k1Scalar(const std::vector<uint8_t>& msg, uint8_t index);
    Secp256k1Scalar(const uint256& n);

    Secp256k1Scalar(const Secp256k1Scalar& s);
    Secp256k1Scalar& operator=(const Secp256k1Scalar& s);

    Secp256k1Scalar(Secp256k1Scalar&& s);
    Secp256k1Scalar& operator=(Secp256k1Scalar&& s);

    void operator=(const uint32_t& n); // using uint32_t since only uint32_t is convertible to underlying

    Secp256k1Scalar operator+(const Secp256k1Scalar& b) const;
    Secp256k1Scalar operator-(const Secp256k1Scalar& b) const;
    Secp256k1Scalar operator*(const Secp256k1Scalar& b) const;
    Secp256k1Scalar operator/(const Secp256k1Scalar& b) const;

    bool operator==(const Secp256k1Scalar& b) const;
    bool operator==(const uint32_t& b) const;  // using uint32_t since only uint32_t is convertible to underlying
    bool operator!=(const Secp256k1Scalar& b) const;
    bool operator!=(const uint32_t& b) const;  // using uint32_t since only uint32_t is convertible to underlying

    const Underlying& GetUnderlying() const;
    bool IsValid() const;
    bool IsZero() const;

    Secp256k1Scalar Invert() const;
    Secp256k1Scalar Negate() const;
    Secp256k1Scalar Square() const;
    Secp256k1Scalar Cube() const;
    Secp256k1Scalar Pow(const Secp256k1Scalar& n) const;
    uint64_t GetUint64() const;
    std::vector<uint8_t> GetVch(const bool trim_preceeding_zeros = false) const;
    void SetVch(const std::vector<uint8_t>& v);
    void SetPow2(const uint32_t& n);
    std::string GetString() const;
    std::vector<bool> ToBinaryVec() const;
    uint256 GetHashWithSalt(const uint64_t& salt) const;

    static Secp256k1Scalar Rand(const bool exclude_zero = false);

    template <typename Stream>
    void Serialize(Stream& s) const
    {
        auto vec = GetVch();
        s.write(MakeByteSpan(vec));
    }

    template <typename Stream>
    void Unserialize(Stream& s)
    {
        std::vector<unsigned char> vec(SERIALIZATION_SIZE);
        s.read(MakeWritableByteSpan(vec));
        SetVch(vec);
    }

    static constexpr int SERIALIZATION_SIZE = 32;

    Underlying m_scalar;
};

#endif // NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_SCALAR_H
