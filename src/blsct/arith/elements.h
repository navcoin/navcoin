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

        size_t Size() const
        {
            return vec.size();
        }

        void Add(const T x)
        {
            vec.push_back(x);
        }

        inline void ConfirmSizesMatch(const size_t& otherSize) const
        {
            if (vec.size() != otherSize)
            {
                throw std::runtime_error("sizes of elements are expected to be the same, but different");
            }
        }

        static Elements<Scalar> FirstNPow(const size_t& n, const Scalar& k)
        {
            if constexpr (std::is_same_v<T, Scalar>) {
                Elements<Scalar> ret;
                Scalar x(1);
                for(size_t i = 0; i < n; ++i)
                {
                    ret.vec.push_back(x);
                    x = x * k;
                }
                return ret;
            } else {
                throw std::runtime_error("Now implemented");
            }
        }

        static Elements<T> RepeatN(const size_t& n, const T& k)
        {
            Elements<T> ret;
            for(size_t i = 0; i < n; ++i)
            {
                ret.vec.push_back(k);    
            }
            return ret;
        }

        static Elements<Scalar> RandVec(const size_t& n, const bool excludeZero = false)
        {
            Elements<Scalar> ret;
            for(size_t i = 0; i < n; ++i)
            {
                auto x = Scalar::Rand(excludeZero);
                ret.vec.push_back(x);    
            }
            return ret;
        }

        // Scalars x Scalars
        // [a1, a2] * [b1, b2] = [a1*b1, a2*b2]
        //
        // G1Points x Scalars
        // [p1, p2] * [a1, ba] = [p1*a1, p2*a2]
        Elements<T> operator*(const Elements<Scalar>& other) const
        {
            ConfirmSizesMatch(other.Size());

            if constexpr (std::is_same_v<T, Scalar>) {
                Elements<Scalar> ret;
                for(size_t i = 0; i < vec.size(); ++i)
                {
                    ret.vec.push_back(vec[i] * other[i]);
                }
                return ret;
            } else if constexpr (std::is_same_v<T, G1Point>) {
                Elements<G1Point> ret;
                for(size_t i = 0; i < Size(); ++i)
                {
                    ret.vec.push_back(vec[i] * other[i]);
                }
                return ret;
            } else {
                throw std::runtime_error("Now implemented");
            }
        }
        
        // Scalars x Scalar
        // [s1, s2] * t = [s1*t, s2*t] 
        //
        // G1Points x Scalar
        // [p1, p2] ^ s = [p1*s, p2*s] 
        Elements<T> operator*(const Scalar& s) const
        {
            if constexpr (std::is_same_v<T, Scalar>) {
                Elements<Scalar> ret;
                for(size_t i = 0; i < vec.size(); ++i)
                {
                    ret.vec.push_back(vec[i] * s);
                }
                return ret;
            } else if constexpr (std::is_same_v<T, G1Point>) {
                Elements<G1Point> ret;
                for(size_t i = 0; i < vec.size(); ++i)
                {
                    ret.vec.push_back(vec[i] * s);
                }
                return ret;
            } else {
                throw std::runtime_error("Now implemented");
            }
        }

        // [p1, p2] + [q1, q2] = [p1+q1, p2+q2] 
        Elements<T> operator+(const Elements<T>& other) const
        {
            ConfirmSizesMatch(other.Size());

            Elements<T> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.Add(vec[i] + other.vec[i]);
            }
            return ret;
        }

        // [p1, p2] - [q1, q2] = [p1-q1, p2-q2] 
        Elements<T> operator-(const Elements<T>& other) const
        {
            ConfirmSizesMatch(other.Size());

            Elements<T> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.vec.push_back(vec[i] - other.vec[i]);
            }
            return ret;
        }

        bool operator==(const Elements<T>& other) const 
        {
            if (vec.size() != other.Size())
            {
                return false;
            }

            bool ret = true;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret = ret && (vec[i] == other[i]);
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
            if (fromIndex >= Size())
            {
                throw std::runtime_error("from index out of range");
            }

            Elements<T> ret;
            for(size_t i = fromIndex; i < vec.size(); ++i)
            {
                ret.vec.push_back(vec[i]);
            }
            return ret;
        }

        // returns elements slice [0, toIndex) 
        Elements<T> To(const size_t toIndex) const
        {
            if (toIndex > Size())
            {
                throw std::runtime_error("to index out of range");
            }

            Elements<T> ret;
            for(size_t i = 0; i < toIndex; ++i)
            {
                ret.vec.push_back(vec[i]);
            }
            return ret;
        }

    private:
        std::vector<T> vec;
};

using Scalars = Elements<Scalar>;
using G1Points = Elements<G1Point>;

#endif // NAVCOIN_BLSCT_ARITH_ELEMENTS_H

