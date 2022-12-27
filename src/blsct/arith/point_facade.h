// Copyright (c) 2022 Phe Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_POINT_FACADE_H
#define NAVCOIN_BLSCT_ARITH_POINT_FACADE_H

#include <stddef.h>
#include <string>

#include <serialize.h>
#include <uint256.h>

enum class Endianness {
    Big,
    Little
};

template <typename Point>
class PointFacade
{
public:
    PointFacade();

    static void Init();

    template <typename U>
    Point operator=(const U& rhs);

    Point operator+(const Point& rhs) const;
    Point operator-(const Point& rhs) const;

    template <typename Scalar>
    Point operator*(const Scalar& rhs) const;

    bool operator==(const Point& rhs) const;
    bool operator!=(const Point& rhs) const;

    template <typename U>
    U Underlying() const;
    Point Double() const;

    static Point GetBasePoint();
    static Point MapToG1(const std::vector<uint8_t>& vec, const Endianness e = Endianness::Little);
    static Point MapToG1(const std::string& s, const Endianness e = Endianness::Little);
    static Point HashAndMap(const std::vector<uint8_t>& vec);

    static Point Rand();

    bool IsValid() const;
    bool IsUnity() const;

    std::vector<uint8_t> GetVch() const;
    void SetVch(const std::vector<uint8_t>& vec);

    std::string GetString(const int& radix = 16) const;

    template <typename Scalar>
    Scalar GetHashWithSalt(const uint64_t salt) const;

    size_t GetSerializeSize() const;

    template <typename Stream>
    void Serialize(Stream& s) const;

    template <typename Stream>
    void Unserialize(Stream& s);
};

#endif // NAVCOIN_BLSCT_ARITH_POINT_FACADE_H
