// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/g1point.h>
#include <blsct/arith/scalars.h>
#include <numeric>

mclBnG1 G1Point::G;
boost::mutex G1Point::init_mutex;

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

G1Point::G1Point(const mclBnG1& q)
{
    p = q;
}

G1Point::G1Point(const uint256& b)
{
    // not using G1Point::MapToG1 since uint256 deserialization is big-endian
    G1Point temp;
    mclBnFp v;
    if (mclBnFp_setBigEndianMod(&v, b.data(), b.size()) != 0)
    {
        throw std::runtime_error("G1Point(uint256): mclBnFp_setLittleEndianMod failed");
    }
    if (mclBnFp_mapToG1(&temp.p, &v) != 0)
    {
        throw std::runtime_error("G1Point(uint256): mclBnFp_mapToG1 failed");
    }
    p = temp.p;
}

void G1Point::Init()
{
    boost::lock_guard<boost::mutex> lock(G1Point::init_mutex);
    static bool fInit = false;
    if (fInit)
        return;

    MclInitializer::Init();
    mclBnG1 G;
    const char* serializedG = "1 3685416753713387016781088315183077757961620795782546409894578378688607592378376318836054947676345821548104185464507 1339506544944476473020471379941921221584933875938349620426543736416511423956333506472724655353366534992391756441569";
    if (mclBnG1_setStr(&G, serializedG, strlen(serializedG), 10) == -1)
    {
        throw std::runtime_error("G1Point::Init(): mclBnG1_setStr failed");
    }
    G1Point::G = G;
    fInit = true;
}

void G1Point::operator=(const mclBnG1& q) 
{
    p = q;
}

G1Point G1Point::operator+(const G1Point& b) const
{
    G1Point ret;
    mclBnG1_add(&ret.p, &p, &b.p);
    return ret;
}

G1Point G1Point::operator-(const G1Point& b) const
{
    G1Point ret;
    mclBnG1_sub(&ret.p, &p, &b.p);
    return ret;
}

G1Point G1Point::operator*(const Scalar& b) const
{
    G1Point ret;
    mclBnG1_mul(&ret.p, &p, &b.fr);
    return ret;
}

G1Point G1Point::operator^(const Scalars& ss) const
{
    Scalar m(1);
    for(Scalar s: ss.sVec)
    {
        m = m * s;
    }
    auto ret = (*this) * m;

    return ret;
}

G1Point G1Point::Double() const
{
    G1Point temp;
    mclBnG1_dbl(&temp.p, &p);
    return temp;
}

G1Point G1Point::GetBasePoint()
{
    G1Point g(G1Point::G);
    return g;
}

G1Point G1Point::MapToG1(std::vector<uint8_t>& vec, Endianness e)
{
    G1Point temp;
    mclBnFp v;
    if (e == Endianness::Little)
    {
        if (mclBnFp_setLittleEndianMod(&v, &vec[0], vec.size()) != 0)
        {
            throw std::runtime_error("G1Point::MapToG1(): mclBnFp_setLittleEndianMod failed");
        }
    } else 
    {
        if (mclBnFp_setBigEndianMod(&v, &vec[0], vec.size()) != 0)
        {
            throw std::runtime_error("G1Point::MapToG1(): mclBnFp_setBigEndianMod failed");
        }
    }

    if (mclBnFp_mapToG1(&temp.p, &v) != 0)
    {
        throw std::runtime_error("G1Point::MapToG1(): mclBnFp_mapToG1 failed");
    }
    return temp;
}

G1Point G1Point::HashAndMap(std::vector<uint8_t>& vec)
{
    mclBnG1 p;
    if (mclBnG1_hashAndMapTo(&p, &vec[0], vec.size()) != 0)
    {
        throw std::runtime_error("G1Point::HashAndMap(): mclBnG1_hashAndMapTo failed");
    }
    G1Point temp(p);
    return temp;
}

G1Point G1Point::MulVec(const std::vector<G1Point>& gVec, const std::vector<Scalar>& sVec)
{
    if (gVec.size() != sVec.size())
        throw std::runtime_error("G1Point::mulVec(): gVec and sVec size must be equal");

    const size_t vecCount = gVec.size();

    std::vector<mclBnG1> vecG1 (vecCount);
    std::vector<mclBnFr> vecFr (vecCount);

    for (size_t i = 0; i < vecCount; ++i) {
        vecG1[i] = gVec[i].p;
        vecFr[i] = sVec[i].fr;
    }

    return G1Point::MulVec(vecG1, vecFr);
}

G1Point G1Point::MulVec(const std::vector<mclBnG1>& gVec, const std::vector<mclBnFr>& sVec)
{
    if (gVec.size() != sVec.size())
        throw std::runtime_error("G1Point::mulVec(): gVec and sVec size must be equal");

    G1Point ret;
    const size_t vecCount = gVec.size();
    mclBnG1_mulVec(&ret.p, gVec.data(), sVec.data(), vecCount);

    return ret;
}

bool G1Point::operator==(const G1Point& b) const
{
    return mclBnG1_isEqual(&p, &b.p);
}

bool G1Point::operator!=(const G1Point& b) const
{
    return !operator==(b);
}

G1Point G1Point::Rand()
{
    auto G = GetBasePoint();
    return G * Scalar::Rand();
}

bool G1Point::IsUnity() const
{
    return mclBnG1_isZero(&p);
}

std::vector<uint8_t> G1Point::GetVch() const
{
    std::vector<uint8_t> b(WIDTH);
    if (mclBnG1_serialize(&b[0], WIDTH, &p) == 0)
    {
        throw std::runtime_error("G1Point::GetVch(): mclBnG1_serialize failed");
    }
    return b;
}

void G1Point::SetVch(const std::vector<uint8_t>& b)
{
    if (mclBnG1_deserialize(&p, &b[0], b.size()) == 0)
    {
        throw std::runtime_error("G1Point::SetVch(): mclBnG1_deserialize failed");
    }
}

std::string G1Point::GetString(const int& ioMode)
{
    char str[1024];
    if (mclBnG1_getStr(str, sizeof(str), &p, ioMode) == 0)
    {
        throw std::runtime_error("G1Point::GetString(): mclBnG1_getStr failed");
    }
    return std::string(str);
}
