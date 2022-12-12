// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

// Diverse arithmetic operations in the bls curve
// inspired by https://github.com/b-g-goodell/research-lab/blob/master/source-code/StringCT-java/src/how/monero/hodl/bulletproof/Bulletproof.java
// and https://github.com/monero-project/monero/blob/master/src/ringct/bulletproofs.cc

#ifndef NAVCOIN_BLSCT_ARITH_ELEMENTS_H
#define NAVCOIN_BLSCT_ARITH_ELEMENTS_H

#include <cstddef>
#include <stdexcept>
#include <vector>

#include <blsct/arith/scalar.h>
#include <blsct/arith/point.h>

/**
 * Expects below instantiations only:
 * - Elements<Point<>>
 * - Elements<Scalar<>>
 */
template <typename T>
class Elements
{
public:
    Elements();
    Elements(std::vector<T> vec);

    T Sum() const;
    size_t Size() const;
    void Add(const T x);

    void ConfirmSizesMatch(const size_t& other_size) const;

    static Elements<T> FirstNPow(const size_t& n, const T& k);
    static Elements<T> RepeatN(const size_t& n, const T& k);
    static Elements<T> RandVec(const size_t& n, const bool exclude_zero = false);

    T operator[](int index) const;

    /**
     * Scalars x Scalars
     * [a1, a2] * [b1, b2] = [a1*b1, a2*b2]
     *
     * G1Points x Scalars
     * [p1, p2] * [a1, ba] = [p1*a1, p2*a2]
     */
    template <typename S>
    Elements<T> operator*(const Elements<S>& rhs) const;

    /**
     * Scalars x Scalar
     * [s1, s2] * s = [s1*s, s2*s]
     *
     * G1Points x Scalar
     * [p1, p2] ^ s = [p1*s, p2*s]
     */
    template <typename S>
    Elements<T> operator*(const S& rhs) const;

    /**
     * [p1, p2] + [q1, q2] = [p1+q1, p2+q2]
     */
    Elements<T> operator+(const Elements<T>& rhs) const;

    /**
     * [p1, p2] - [q1, q2] = [p1-q1, p2-q2]
     */
    Elements<T> operator-(const Elements<T>& rhs) const;

    bool operator==(const Elements<T>& rhs) const;

    bool operator!=(const Elements<T>& rhs) const;

    /**
     * MulVec is equivalent of (Elements<G1Point> * Elements<Scalar>).Sum(),
     * but faster than that due to direct use of mcl library.
     * Only works with Her arith classes.
     */
    template <typename S>
    T MulVec(const Elements<S>& scalars) const;

    /**
     * Returns elements slice [fromIndex, vec.size())
     */
    Elements<T> From(const size_t from_index) const;

    /**
     * Returns elements slice [0, toIndex)
     */
    Elements<T> To(const size_t to_index) const;

    std::vector<T> m_vec;
};

template <typename T>
using Scalars = Elements<T>;

template <typename T>
using Points = Elements<T>;

#endif // NAVCOIN_BLSCT_ARITH_ELEMENTS_H
