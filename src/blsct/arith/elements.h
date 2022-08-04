// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_ELEMENTS_H
#define NAVCOIN_BLSCT_ARITH_ELEMENTS_H

#include <vector>
#include <cstddef>
#include <stdexcept>

#include <blsct/arith/scalar.h>
#include <blsct/arith/g1point.h>

// expecting below instantiations only:
//
// - Elements<G1Point, Scalar>
// - Elements<Scalar, G1Point>
//
// where T is the element type and U is the type of the interacting element
// e.g. Elements<G1Point,Scalar> represents vector of G1Point that interacts with Scalar
//
template<typename Element, typename Other>  
class Elements {
    public:
        Elements<Element,Other>(const std::vector<Element>& vec)
        {
            this->vec = vec;
        }

        Element Sum() const
        {
            Element ret;
            for(Element s: vec)
            {
                ret = ret + s;
            }
            return ret;
        }

        inline void ConfirmSizesMatch(const size_t& otherSize) const
        {
            if (vec.size() != otherSize)
            {
                throw std::runtime_error("sizes of elements are expected to be the same, but different");
            }
        }

        // G1Points x Scalars
        // [p1, p2] ^ [s1, s2] = [p1^s1, p2^s2] 
        // where ^ is elliptic curve scalar multiplication
        Elements<G1Point,Scalar> operator^(const Elements<Scalar,G1Point>& other) const
        {
            ConfirmSizesMatch(other.vec.size());

            std::vector<G1Point> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.push_back(vec[i] ^ other.vec[i]);
            }
            return ret;
        }

        // Scalars x Scalars
        // [a1, a2] * [b1, b2] = [a1*b1, a2*b2]
        Elements<Scalar,G1Point> operator*(const Elements<Scalar,G1Point>& other) const
        {
            ConfirmSizesMatch(other.vec.size());

            std::vector<Scalar> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.push_back(vec[i] * other.vec[i]);
            }
            return ret;
        }
        
        Elements<Element,Other> operator+(const Elements<Element,Other>& other) const
        {
            ConfirmSizesMatch(other);

            std::vector<Element> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.push_back(vec[i] + other.vec[i]);
            }
            return ret;
        }

        // returns elements slice [fromIndex, vec.size()) 
        Elements<Element,Other> From(const size_t fromIndex) const
        {
            if (fromIndex >= vec.size())
            {
                throw std::runtime_error("from index out of range");
            }

            std::vector<Element> ret;
            for(size_t i = fromIndex; i < vec.size(); ++i)
            {
                ret.push_back(vec[i]);
            }
            return ret;
        }

        // returns elements slice [0, toIndex) 
        Elements<Element,Other> To(const size_t toIndex) const
        {
            if (toIndex >= vec.size())
            {
                throw std::runtime_error("to index out of range");
            }

            std::vector<Element> ret;
            for(size_t i = 0; i < toIndex; ++i)
            {
                ret.push_back(vec[i]);
            }
            return ret;
        }

        bool operator==(const Elements<Element,Other>& other) const 
        {
            if (vec.size() != other.vec.size())
            {
                return false;
            }

            bool ret = true;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret = ret && (vec[i] == other.vec[i]);
            }
            return ret;
        }

        bool operator!=(const Elements<Element,Other>& other) const
        {
            return !operator==(other);
        }

        std::vector<Element> vec;
};

using Scalars = Elements<Scalar,G1Point>;
using G1Points = Elements<G1Point,Scalar>;

#endif // NAVCOIN_BLSCT_ARITH_ELEMENTS_H

