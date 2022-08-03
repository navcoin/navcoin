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

template<class T>
class Elements {
    public:
        Elements(const std::vector<T>& vec)
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

        inline void ConfirmSizesMatch(const Elements& other) const
        {
            if (vec.size() != other.vec.size())
            {
                throw std::runtime_error("sizes of elements's are expected to be the same, but different");
            }
        }

        Elements operator+(const Elements& other) const
        {
            ConfirmSizesMatch(other);

            std::vector<T> ret;
            for(size_t i = 0; i < vec.size(); ++i)
            {
                ret.push_back(vec[i] + other.vec[i]);
            }
            return ret;
        }

        Elements<T> From(const size_t fromIndex) const
        {
            if (fromIndex < 0 || fromIndex >= vec.size())
            {
                throw std::runtime_error("index out of range");
            }

            std::vector<T> ret;
            for(size_t i = fromIndex; i < vec.size(); ++i)
            {
                ret.push_back(vec[i]);
            }
            return ret;
        }

        Elements<T> To(const size_t toIndex) const
        {
            if (toIndex < 0 || toIndex >= vec.size())
            {
                throw std::runtime_error("index out of range");
            }

            std::vector<T> ret;
            for(size_t i = 0; i <= toIndex; ++i)
            {
                ret.push_back(vec[i]);
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

        std::vector<T> vec;
};

#endif // NAVCOIN_BLSCT_ARITH_ELEMENTS_H

