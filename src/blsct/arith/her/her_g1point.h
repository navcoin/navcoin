// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_HER_HER_G1POINT_H
#define NAVCOIN_BLSCT_ARITH_HER_HER_G1POINT_H

#include <stddef.h>
#include <string>
#include <vector>

#include <bls/bls384_256.h> // must include this before bls/bls.h
#include <bls/bls.h>
#include <blsct/arith/point.h>
#include <blsct/arith/her/her_scalar.h>
#include <boost/thread/lock_guard.hpp>
#include <boost/thread/mutex.hpp>

/*
Using `Her` prefix instead of `Mcl` because `fun:*mcl*` wildcard is used to
suppress memory sanitizer that detects false positives in mcl library
*/

class HerG1Point : public Point<HerG1Point>
{
public:
    static constexpr int WIDTH = 384 / 8;

    HerG1Point();
    HerG1Point(const std::vector<uint8_t>& v);
    HerG1Point(const uint256& b);
    HerG1Point(const mclBnG1& p);

    static void Init();

    HerG1Point operator=(const mclBnG1& rhs);
    HerG1Point operator+(const HerG1Point& rhs) const;
    HerG1Point operator-(const HerG1Point& rhs) const;
    HerG1Point operator*(const HerScalar& rhs) const;

    bool operator==(const HerG1Point& rhs) const;
    bool operator!=(const HerG1Point& rhs) const;

    HerG1Point Double() const;

    static HerG1Point GetBasePoint();
    static HerG1Point MapToG1(const std::vector<uint8_t>& vec, const Endianness e = Endianness::Little);
    static HerG1Point MapToG1(const std::string& s, const Endianness e = Endianness::Little);
    static HerG1Point HashAndMap(const std::vector<uint8_t>& vec);

    /**
     * Multiply HerG1Points by Scalars element by element and then get the sum of all resulting points
     * [g_1*s_1, g_2*s_2, ..., g_n*s_n].Sum()
     */
    static HerG1Point MulVec(const std::vector<mclBnG1>& g_vec, const std::vector<mclBnFr>& s_vec);

    static HerG1Point Rand();

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

    mclBnG1 m_p;

private:
    static mclBnG1 m_g; // Using mclBnG1 instead of HerG1Point to get around chiken-and-egg issue
    static boost::mutex m_init_mutex;
};

#endif // NAVCOIN_BLSCT_ARITH_HER_HER_G1POINT_H
