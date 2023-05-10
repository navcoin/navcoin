// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_POINT_H
#define NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_POINT_H

#include <secp256k1_export.h>
#include <blsct/arith/secp256k1/secp256k1_scalar.h>
#include <blsct/arith/endianness.h>
#include <uint256.h>

#include <stddef.h>
#include <string>
#include <vector>
#include <iostream>

class Secp256k1Point
{
public:
    using Underlying = secp256k1_gej_alias;
    using Scalar = Secp256k1Scalar;

    Secp256k1Point();
    Secp256k1Point(const std::vector<uint8_t>& v);
    Secp256k1Point(const Underlying& p);
    Secp256k1Point(const uint256& n);

    Secp256k1Point(const Secp256k1Point&);
    Secp256k1Point& operator=(const Secp256k1Point& p);

    Secp256k1Point(Secp256k1Point&& p);
    Secp256k1Point& operator=(Secp256k1Point&& p);

    Secp256k1Point operator=(const Underlying& rhs);
    Secp256k1Point operator+(const Secp256k1Point& rhs) const;
    Secp256k1Point operator-(const Secp256k1Point& rhs) const;
    Secp256k1Point operator*(const Scalar& rhs) const;

    /**
     * Because  Elements cannot be used here, std::vector is used instead
     */
    std::vector<Secp256k1Point> operator*(const std::vector<Scalar>& ss) const;

    bool operator==(const Secp256k1Point& rhs) const;
    bool operator!=(const Secp256k1Point& rhs) const;

    Secp256k1Point Double() const;
    const Underlying& GetUnderlying() const;

    static Secp256k1Point GetBasePoint();
    static Secp256k1Point MapToPoint(const std::vector<uint8_t>& vec, const Endianness e = Endianness::Little);
    static Secp256k1Point MapToPoint(const std::string& s, const Endianness e = Endianness::Little);
    static Secp256k1Point Rand();

    bool IsValid() const;
    bool IsZero() const;

    std::vector<uint8_t> GetVch() const;
    void SetVch(const std::vector<uint8_t>& vec);

    std::string GetString() const;
    Scalar GetHashWithSalt(const uint64_t salt) const;

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

    Underlying m_point;

    static constexpr int SERIALIZATION_SIZE = 64;

#ifndef BOOST_UNIT_TEST
private:
#endif
    static secp256k1_ge_storage_alias VecToStorage(const std::vector<uint8_t>& vec);
    static std::vector<uint8_t> StorageToVec(const secp256k1_ge_storage_alias& st);
};

#endif // NAVCOIN_BLSCT_ARITH_SECP256K1_SECP256K1_POINT_H
