// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_SCALAR_H
#define NAVCOIN_BLSCT_ARITH_SCALAR_H

#include <bls.h>

#define CHECK_AND_ASSERT_THROW_MES(expr, message) do {if(!(expr)) throw std::runtime_error(message);} while(0)

class Scalar {
    public:
        Scalar(const uint64_t& n = 0);
        Scalar(const std::vector<uint8_t> &v);
        Scalar(const Scalar& n);
        Scalar(const uint256& n);

        void operator=(const uint64_t& n);

        Scalar operator+(const Scalar &b) const;
        Scalar operator-(const Scalar &b) const;
        Scalar operator*(const Scalar &b) const;
        Scalar operator/(const Scalar &b) const;
        Scalar operator|(const Scalar &b) const;
        Scalar operator^(const Scalar &b) const;
        Scalar operator&(const Scalar &b) const;
        Scalar operator~() const;
        Scalar operator<<(const int &b) const;
        Scalar operator>>(const int &b) const;

        bool operator==(const Scalar& b) const;
        bool operator==(const int &b) const;

        Scalar Invert() const;
        Scalar Negate() const;

        static Scalar Rand();
        static Scalar hashAndMap(std::vector<unsigned char>);

        bool GetBit(size_t n) const;
        int64_t GetInt64() const;

        std::vector<uint8_t> GetVch() const;
        void SetVch(const std::vector<uint8_t>& b);

        void SetPow2(const int& n);

        uint256 Hash(const int& n) const;

        std::string GetString();
};

#endif // NAVCOIN_BLSCT_ARITH_SCALAR_H
