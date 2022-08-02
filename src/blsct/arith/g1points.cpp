// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/g1points.h>

G1Points::G1Points(const std::vector<G1Point>& sVec)
{
   this->pVec = pVec;
}

G1Points G1Points::operator+(const G1Points& other) const
{
    if (pVec.size() != other.pVec.size())
    {
        throw std::runtime_error("cannot add G1Points's of different sizes");
    }
    std::vector<G1Point> ret;
    for(size_t i = 0; i < pVec.size(); ++i)
    {
        ret.push_back(pVec[i] + other.pVec[i]);
    }
    return ret;
}

bool G1Points::operator==(const G1Points& other) const
{
    if (pVec.size() != other.pVec.size())
    {
        return false;
    }

    bool ret = true;
    for(size_t i = 0; i < pVec.size(); ++i)
    {
        ret = ret && (pVec[i] == other.pVec[i]);
    }
    return ret;
}

bool G1Points::operator!=(const G1Points& other) const
{
    return !operator==(other);
}

G1Point G1Points::Sum() const
{
    G1Point ret;
    for(G1Point p: pVec)
    {
        ret = ret + p;
    }
    return ret;
}
