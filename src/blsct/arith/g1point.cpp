// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/g1point.h>

G1Point::G1Point()
{
    mclBnG1_clear(&p);
}

G1Point::G1Point(const std::vector<uint8_t>& v)
{
    G1Point::SetVch(v);
}

G1Point::G1Point(const G1Point& n)
{
    p = n.p;
}

G1Point::G1Point(const uint256 &b)
{
    mclBnG1_deserialize(&p, b.begin(), WIDTH);
}

G1Point G1Point::operator+(const G1Point &b) const
{
    G1Point ret;
    mclBnG1_add(&ret.p, &p, &b.p);
    return ret;
}

G1Point G1Point::operator-(const G1Point &b) const
{
    G1Point ret;
    mclBnG1_sub(&ret.p, &p, &b.p);
    return ret;
}

G1Point G1Point::operator*(const Scalar &b) const
{
    G1Point ret;
    mclBnG1_mul(&ret.p, &p, &b.fr);
    return ret;
}

G1Point G1Point::Normalize() const
{
    G1Point temp;
    mclBnG1_normalize(&temp.p, &p);
    return temp;
}

G1Point G1Point::Double() const
{
    G1Point temp;
    mclBnG1_dbl(&temp.p, &p);
}

G1Point G1Point::getBasePoint()
{
    return G1Point();
}

G1Point G1Point::hashAndMap(std::vector<unsigned char> &v)
{
    G1Point temp;
    mclBnG1_hashAndMapTo(&temp.p, &v[0], v.size());
    return temp;
}

G1Point G1Point::mulVec(std::vector<G1Point> gVec, std::vector<Scalar> sVec)
{
    /*
     * Not sure about this implementation, will get back to it later
     */
    /* size_t size = std::max(gVec.size(), sVec.size()); */

    /* std::vector<G1Point> retVec(size); */

    /* for (size_t i = 0; i < size; ++i) { */
    /*     retVec[i] = gVec[i] * sVec[i]; */
    /* } */

    /* return retVec; */
}

bool G1Point::operator==(const G1Point& b) const
{
    return mclBnG1_isEqual(&p, &b.p);
}

G1Point G1Point::Rand()
{
    G1Point ret;

    mclBnG1_setStr(&ret.p, "1 1 1", 5, 0);

    return ret * Scalar::Rand();
}

bool G1Point::IsUnity() const
{
    return mclBnG1_isZero(&p);
}

std::vector<uint8_t> G1Point::GetVch() const
{
    std::vector<uint8_t> b(WIDTH);
    mclBnG1_serialize(&b[0], WIDTH, &p);
    return b;
}

void G1Point::SetVch(const std::vector<uint8_t>& b)
{
    mclBnG1_deserialize(&p, &b[0], b.size());
}

std::string G1Point::GetString(const int& r)
{
    char str[1024];
    mclBnG1_getStr(str, sizeof(str), &p, r);
    return std::string(str);
}
