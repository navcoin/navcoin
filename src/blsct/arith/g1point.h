// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_G1POINT_H
#define NAVCOIN_BLSCT_ARITH_G1POINT_H

#include <bls/bls384_256.h>
#include <bls/bls.h>

#include <blsct/arith/scalar.h>

#include <hash.h>
#include <uint256.h>
#include <serialize.h>
#include <version.h>

#include <stddef.h>
#include <string>
#include <vector>

#define CHECK_AND_ASSERT_THROW_MES(expr, message) do {if(!(expr)) throw std::runtime_error(message);} while(0)

class G1Point {
    public:
        static const size_t POINT_SIZE = 48;

        G1Point();
        G1Point(const std::vector<uint8_t>& v);
        G1Point(const G1Point& n);
        G1Point(const uint256 &b);

        G1Point operator+(const G1Point &b) const;
        G1Point operator-(const G1Point &b) const;
        G1Point operator*(const Scalar &b) const;

        G1Point Normalize() const;
        G1Point Double() const;

        static G1Point getBasePoint();
        static G1Point hashAndMap(std::vector<unsigned char>);
        static G1Point mulVec(std::vector<G1Point>, std::vector<Scalar>);

        bool operator==(const G1Point& b) const;

        static G1Point Rand();

        bool IsUnity() const;

        std::vector<uint8_t> GetVch() const;
        void SetVch(const std::vector<uint8_t>& b);

        std::string GetString();
};

#endif // NAVCOIN_BLSCT_ARITH_G1POINT_H
