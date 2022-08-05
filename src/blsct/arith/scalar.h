// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_SCALAR_H
#define NAVCOIN_BLSCT_ARITH_SCALAR_H

#include <bls/bls384_256.h>
#include <bls/bls.h>
#include <blsct/arith/mcl_initializer.h>

#include <hash.h>
#include <uint256.h>
#include <serialize.h>
#include <version.h>

#include <functional>
#include <stddef.h>
#include <string>
#include <vector>
#include <iostream> // TODO drop this. only for debugging

#define CHECK_AND_ASSERT_THROW_MES(expr, message) do {if(!(expr)) throw std::runtime_error(message);} while(0)

class Scalar {
    public:
        static constexpr int WIDTH = 256 / 8;

        Scalar(const int64_t& n = 0);
        Scalar(const std::vector<uint8_t> &v);
        Scalar(const Scalar& n);
        Scalar(const mclBnFr& nFr);
        Scalar(const uint256& n);
        Scalar(const std::string& s, int ioMode);

        static void Init();

        Scalar ApplyBitwiseOp(const Scalar& a, const Scalar&b, 
            std::function<uint8_t(uint8_t, uint8_t)> op) const;

        void operator=(const uint64_t& n);

        Scalar operator+(const Scalar &b) const;
        Scalar operator-(const Scalar &b) const;
        Scalar operator*(const Scalar &b) const;
        Scalar operator/(const Scalar &b) const;
        Scalar operator|(const Scalar &b) const;
        Scalar operator^(const Scalar &b) const;
        Scalar operator&(const Scalar &b) const;
        Scalar operator~() const;
        Scalar operator<<(unsigned int shift) const;
        Scalar operator>>(unsigned int shift) const;

        bool operator==(const Scalar &b) const;
        bool operator==(const int &b) const;
        bool operator!=(const Scalar &b) const;
        bool operator!=(const int &b) const;

        Scalar Invert() const;
        Scalar Negate() const;

        static Scalar Rand(bool excludeZero = false);

        int64_t GetInt64() const;

        std::vector<uint8_t> GetVch() const;
        void SetVch(const std::vector<uint8_t>& v);

        void SetPow2(int n);

        uint256 Hash(const int& n) const;

        std::string GetString(const int& r = 16) const;

        bool GetBit(uint8_t n) const;

        static Scalar HashAndMap(std::vector<unsigned char> vch);
        
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

        mclBnFr fr;
};

#endif // NAVCOIN_BLSCT_ARITH_SCALAR_H
