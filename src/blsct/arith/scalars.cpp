// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/scalars.h>

Scalars Scalars::operator*(const Scalars& other) const
{
    ConfirmSizesMatch(other);

    std::vector<Scalar> ret;
    for(size_t i = 0; i < vec.size(); ++i)
    {
        ret.push_back(vec[i] * other.vec[i]);
    }
    return ret;
}