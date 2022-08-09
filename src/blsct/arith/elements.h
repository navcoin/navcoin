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
// - Elements<G1Point>
// - Elements<Scalar>
//
template<typename T>  
class Elements {
    public:
        Elements<T>() {}

        Elements<T>(const std::vector<T>& vec)
        {
            this->vec = vec;
        }

        T Sum() const
        {
            T ret;
            for(T s: vec)
            {
                ret = ret + s;
            }
            return ret;
        }

        T operator[](int index) const
        {
            return vec[index];
        }

        size_t size() const
        {
            return vec.size();
        }

        inline void ConfirmSizesMatch(const size_t& otherSize) const
        {
            if (vec.size() != otherSize)
            {
                throw std::runtime_error("sizes of elements are expected to be the same, but different");
            }
        }

        static Elements<Scalar> FirstNPowers(const uint64_t& n, Scalar& k)
        {
            Elements<Scalar> temp;
            Scalar x(1);
            for(size_t i = 0; i < n; ++i)
            {
                temp.vec.push_back(x);    
                x = x * k;
            }
            return temp;
        }

        // G1Points x Scalars
        // [p1, p2] ^ [s1, s2] = [p1*s1, p2*s2] 
        // where * is elliptic curve scalar multiplication
        Elements<G1Point> operator^(const Elements<Scalar>& other) const
        {
            ConfirmSizesMatch(other.size());

            std::vector<G1Point> ret;
            for(size_t i = 0; i < size(); ++i)
            {
                ret.push_back(vec[i] * other[i]);
            }
            return ret;
        }

        // G1Points x Scalar
        // [p1, p2] ^ s = [p1*s, p2*s] 
        // where * on rhs is elliptic curve scalar multiplication
        Elements<G1Point> operator^(const Scalar& s) const
        {
            std::vector<G1Point> ret;
            for(size_t i = 0; i < size(); ++i)
            {
                ret.push_back(vec[i] * s);
            }
            return ret;
        }

        // Scalars x Scalars
        // [a1, a2] * [b1, b2] = [a1*b1, a2*b2]
        Elements<Scalar> operator*(const Elements<Scalar>& other) const
        {
            ConfirmSizesMatch(other.size());

            std::vector<Scalar> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.push_back(vec[i] * other[i]);
            }
            return ret;
        }
        
        // Scalars x Scalar
        // [s1, s2] * t = [s1*t, s2*t] 
        // where * on rhs is scalar multiplication
        Elements<Scalar> operator*(const Scalar& s) const
        {
            std::vector<Scalar> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.push_back(vec[i] * s);
            }
            return ret;
        }

        // G1Points + G1Points
        // [p1, p2] * [q1, q2] = [p1+q1, p2+q2] 
        Elements<T> operator+(const Elements<T>& other) const
        {
            ConfirmSizesMatch(other.vec.size());

            std::vector<T> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.push_back(vec[i] + other.vec[i]);
            }
            return ret;
        }

        bool operator==(const Elements<T>& other) const 
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

        bool operator!=(const Elements<T>& other) const
        {
            return !operator==(other);
        }

        // returns elements slice [fromIndex, vec.size()) 
        Elements<T> From(const size_t fromIndex) const
        {
            if (fromIndex >= vec.size())
            {
                throw std::runtime_error("from index out of range");
            }

            std::vector<T> ret;
            for(size_t i = fromIndex; i < vec.size(); ++i)
            {
                ret.push_back(vec[i]);
            }
            return ret;
        }

        // returns elements slice [0, toIndex) 
        Elements<T> To(const size_t toIndex) const
        {
            if (toIndex > vec.size())
            {
                throw std::runtime_error("to index out of range");
            }

            std::vector<T> ret;
            for(size_t i = 0; i < toIndex; ++i)
            {
                ret.push_back(vec[i]);
            }
            return ret;
        }

    private:
        std::vector<T> vec;
};

using Scalars = Elements<Scalar>;
using G1Points = Elements<G1Point>;

#endif // NAVCOIN_BLSCT_ARITH_ELEMENTS_H

