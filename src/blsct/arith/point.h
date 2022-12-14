// Copyright (c) 2022 Phe Navcoin developers
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

 #include <blsct/arith/scalar.h>
// #include <hash.h>
#include <serialize.h>
#include <uint256.h>
// #include <version.h>

enum class Endianness {
    Big,
    Little
};

template <typename P>
class Point
{
public:
    Point();

    static void Init();

    template <typename PV>
    P operator=(const PV& rhs);

    P operator+(const P& rhs) const;
    P operator-(const P& rhs) const;

    template <typename S>
    P operator*(const S& rhs) const;

    bool operator==(const P& rhs) const;
    bool operator!=(const P& rhs) const;

    template <typename PV>
    PV Underlying() const;
    P Double() const;

    static P GetBasePoint();
    static P MapToG1(const std::vector<uint8_t>& vec, const Endianness e = Endianness::Little);
    static P MapToG1(const std::string& s, const Endianness e = Endianness::Little);
    static P HashAndMap(const std::vector<uint8_t>& vec);

    /**
     * Multiply Point<T>s by Scalars element by element and then get the sum of all resulting points
     * [g_1*s_1, g_2*s_2, ..., g_n*s_n].Sum()
     */
    template <typename PV, typename SV>
    static P MulVec(const std::vector<PV>& g_vec, const std::vector<SV>& s_vec);

    static P Rand();

    bool IsValid() const;
    bool IsUnity() const;

    std::vector<uint8_t> GetVch() const;
    void SetVch(const std::vector<uint8_t>& vec);

    std::string GetString(const int& radix = 16) const;

    unsigned int GetSerializeSize() const;

    template <typename Stream>
    void Serialize(Stream& s) const;

    template <typename Stream>
    void Unserialize(Stream& s);
};

#endif // NAVCOIN_BLSCT_ARITH_POINT_H
