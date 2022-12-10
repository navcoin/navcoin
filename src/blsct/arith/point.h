// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_POINT_H
#define NAVCOIN_BLSCT_ARITH_POINT_H

#include <stddef.h>
#include <string>

// #include <bls/bls384_256.h> // must include this before bls/bls.h
// #include <bls/bls.h>
// #include <boost/thread/lock_guard.hpp>
// #include <boost/thread/mutex.hpp>

// #include <blsct/arith/scalar.h>
// #include <hash.h>
// #include <serialize.h>
// #include <uint256.h>
// #include <version.h>

enum class Endianness {
    Big,
    Little
};

template <typename T>
class Point
{
public:
    static constexpr int WIDTH = 384 / 8;

    Point<T>();
    Point<T>(const std::vector<uint8_t>& v);
    Point<T>(const uint256& b);
    Point<T>(const P& p);

    static void Init();

    template <typename T>
    template <typename P>
    Point<T> operator=(const P& rhs);

    Point<T> operator+(const Point<T>& rhs) const;
    Point<T> operator-(const Point<T>& rhs) const;

    template <typename T>
    template <typename V>
    Point<T> operator*(const Scalar<V>& rhs) const;

    bool operator==(const Point<T>& rhs) const;
    bool operator!=(const Point<T>& rhs) const;

    Point<T> Double() const;

    static Point<T> GetBasePoint();
    static Point<T> MapToG1(const std::vector<uint8_t>& vec, const Endianness e = Endianness::Little);
    static Point<T> MapToG1(const std::string& s, const Endianness e = Endianness::Little);
    static Point<T> HashAndMap(const std::vector<uint8_t>& vec);

    /**
     * Multiply Point<T>s by Scalars element by element and then get the sum of all resulting points
     * [g_1*s_1, g_2*s_2, ..., g_n*s_n].Sum()
     */
    template <typename T>
    template <typename P>
    template <typename V>
    static Point<T> MulVec(const std::vector<P>& g_vec, const std::vector<V>& s_vec);

    static Point<T> Rand();

    bool IsValid() const;
    bool IsUnity() const;

    std::vector<uint8_t> GetVch() const;
    void SetVch(const std::vector<uint8_t>& vec);

    std::string GetString(const int& radix = 16) const;

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

#endif // NAVCOIN_BLSCT_ARITH_POINT_H
