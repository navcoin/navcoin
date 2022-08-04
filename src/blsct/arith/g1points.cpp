// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/g1points.h>
#include <blsct/arith/scalar.h>

Elements<G1Point,Scalar> Elements<G1Point,Scalar>::operator^(const Elements<Scalar,G1Point>& other) const
{
    ConfirmSizesMatch(other.vec.size());

    std::vector<G1Point> ret;
    for(size_t i = 0; i < vec.size(); ++i)
    {
        ret.push_back(vec[i] ^ other.vec[i]);
    }
    return ret;
}