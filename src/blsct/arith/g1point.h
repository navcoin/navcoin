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

class G1Point {
    public:
        static constexpr int WIDTH = 384 / 8;

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
        static G1Point hashAndMap(std::vector<unsigned char> &v);
        static G1Point mulVec(std::vector<G1Point> gVec, std::vector<Scalar> sVec);

        bool operator==(const G1Point& b) const;

        static G1Point Rand();

        bool IsUnity() const;

        std::vector<uint8_t> GetVch() const;
        void SetVch(const std::vector<uint8_t>& b);

        std::string GetString(const int& r = 16);

        mclBnG1 p;

        unsigned int GetSerializeSize() const
        {
            return ::GetSerializeSize(GetVch());
        }

        template<typename Stream>
            void Serialize(Stream& s) const
            {
                ::Serialize(s, GetVch());
            }

        template<typename Stream>
            void Unserialize(Stream& s)
            {
                std::vector<uint8_t> vch;
                ::Unserialize(s, vch);
                SetVch(vch);
            }
};

#endif // NAVCOIN_BLSCT_ARITH_G1POINT_H
