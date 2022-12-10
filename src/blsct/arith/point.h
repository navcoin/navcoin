// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_POINT_H
#define NAVCOIN_BLSCT_ARITH_POINT_H

#include <stddef.h>
#include <string>

#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>
#include <boost/thread/lock_guard.hpp>
#include <boost/thread/mutex.hpp>

#include <blsct/arith/scalar.h>
#include <hash.h>
#include <serialize.h>
#include <uint256.h>
#include <version.h>

enum class Endianness {
    Big,
    Little
};

template <typename P>
class Point
{
public:
    static constexpr int WIDTH = 384 / 8;

    Point<P>();
    Point<P>(const std::vector<uint8_t>& v);
    Point<P>(const uint256& b);
    Point<P>(const P& p);

    static void Init();

    Point<P> operator=(const P& rhs);
    Point<P> operator+(const Point<P>& rhs) const;
    Point<P> operator-(const Point<P>& rhs) const;

    template <typename V>
    Point<P> operator*(const Scalar<V>& rhs) const;

    bool operator==(const Point<P>& rhs) const;
    bool operator!=(const Point<P>& rhs) const;

    Point<P> Double() const;

    static Point<P> GetBasePoint();
    static Point<P> MapToG1(const std::vector<uint8_t>& vec, const Endianness e = Endianness::Little);
    static Point<P> MapToG1(const std::string& s, const Endianness e = Endianness::Little);
    static Point<P> HashAndMap(const std::vector<uint8_t>& vec);

    /**
     * Multiply Point<P>s by Scalars element by element and then get the sum of all resulting points
     * [g_1*s_1, g_2*s_2, ..., g_n*s_n].Sum()
     */
    template <typename V>
    static Point<P> MulVec(const std::vector<P>& g_vec, const std::vector<V>& s_vec);

    static Point<P> Rand();

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

    P m_p;

private:
    static P m_g; // Using P instead of Point<P> to get around chiken-and-egg issue
    static boost::mutex m_init_mutex;
};

#endif // NAVCOIN_BLSCT_ARITH_POINT_H
