// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/scalars.h>

Scalars::Scalars(const std::vector<Scalar>& sVec)
{
   this->sVec = sVec;
}

Scalars Scalars::operator*(const Scalars& other) const
{
    if (sVec.size() != other.sVec.size())
    {
        throw std::runtime_error("cannot multiply Scalars's of different sizes");
    }
    std::vector<Scalar> ret;
    for(size_t i = 0; i < sVec.size(); ++i)
    {
        ret.push_back(sVec[i] * other.sVec[i]);
    }
    return ret;
}

bool Scalars::operator==(const Scalars& other) const
{
    if (sVec.size() != other.sVec.size())
    {
        return false;
    }

    bool ret = true;
    for(size_t i = 0; i < sVec.size(); ++i)
    {
        ret = ret && (sVec[i] == other.sVec[i]);
    }
    return ret;
}

bool Scalars::operator!=(const Scalars& other) const
{
    return !operator==(other);
}

Scalar Scalars::Sum() const
{
    Scalar ret;
    for(Scalar s: sVec)
    {
        ret = ret + s;
    }
    return ret;
}
