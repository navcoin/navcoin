// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_HER_HER_ELEMENTS_H
#define NAVCOIN_BLSCT_ARITH_HER_HER_ELEMENTS_H

#include <cstddef>
#include <stdexcept>
#include <vector>

#include <blsct/arith/elements.h>
#include <blsct/arith/her/her_scalar.h>
#include <blsct/arith/her/her_g1point.h>

/*
Using `Her` prefix instead of `Mcl` because `fun:*mcl*` wildcard is used to
suppress memory sanitizer that detects false positives in mcl library
*/

/**
 * Designed to expect below instantiations only:
 * - Elements<HerG1Point>
 * - Elements<HerScalar>
 */
template <typename T>
class HerElements : public Elements<HerElements<T>>
{
public:
    HerElements() {}
    HerElements(const std::vector<T>& vec) : m_vec(vec) {}

    T Sum() const;
    T operator[](int index) const;
    size_t Size() const;
    void Add(const T x);

    void ConfirmSizesMatch(const size_t& other_size) const;
    static HerElements<T> FirstNPow(const size_t& n, const HerScalar& k);
    static HerElements<T> RepeatN(const size_t& n, const T& k);
    static HerElements<T> RandVec(const size_t& n, const bool exclude_zero = false);

    /**
     * Scalars x Scalars
     * [a1, a2] * [b1, b2] = [a1*b1, a2*b2]
     *
     * HerG1Points x Scalars
     * [p1, p2] * [a1, ba] = [p1*a1, p2*a2]
     */
    HerElements<T> operator*(const HerElements<HerScalar>& other) const;

    /**
     * Scalars x Scalar
     * [s1, s2] * t = [s1*t, s2*t]
     *
     * HerG1Points x Scalar
     * [p1, p2] ^ s = [p1*s, p2*s]
     */
    HerElements<T> operator*(const HerScalar& s) const;

    /**
     * [p1, p2] + [q1, q2] = [p1+q1, p2+q2]
     */
    HerElements<T> operator+(const HerElements<T>& other) const;

    /**
     * [p1, p2] - [q1, q2] = [p1-q1, p2-q2]
     */
    HerElements<T> operator-(const HerElements<T>& other) const;

    bool operator==(const HerElements<T>& other) const;

    bool operator!=(const HerElements<T>& other) const;

    /**
     * MulVec is equivalent of (Elements<HerG1Point> * Elements<HerScalar>).Sum(),
     * but faster than that due to direct use of mcl library
     */
    HerG1Point MulVec(const HerElements<HerScalar>& scalars) const;

    /**
     * Returns elements slice [fromIndex, vec.size())
     */
    HerElements<T> From(const size_t from_index) const;

    /**
     * Returns elements slice [0, toIndex)
     */
    HerElements<T> To(const size_t to_index) const;

    std::vector<T> m_vec;
};

using HerScalars = HerElements<HerScalar>;
using HerG1Points = HerElements<HerG1Point>;

#endif // NAVCOIN_BLSCT_ARITH_HER_HER_ELEMENTS_H
