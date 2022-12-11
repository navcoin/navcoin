// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/point.h>
#include <blsct/arith/her/her_initializer.h>
#include <blsct/arith/her/her_scalar.h>
#include <blsct/arith/her/her_g1point.h>

#include <numeric>
#include <hash.h>
#include <serialize.h>
#include <uint256.h>
#include <version.h>

HerG1Point::HerG1Point()
{
    mclBnG1_clear(&m_p);
}

HerG1Point::HerG1Point(const std::vector<uint8_t>& v)
{
    HerG1Point::SetVch(v);
}

HerG1Point::HerG1Point(const mclBnG1& q)
{
    m_p = q;
}

HerG1Point::HerG1Point(const uint256& b)
{
    // Not using HerG1Point::MapToG1 since uint256 deserialization is big-endian
    HerG1Point temp;
    mclBnFp v;
    if (mclBnFp_setBigEndianMod(&v, b.data(), b.size()) != 0) {
        throw std::runtime_error("HerG1Point(uint256): mclBnFp_setLittleEndianMod failed");
    }
    if (mclBnFp_mapToG1(&temp.m_p, &v) != 0) {
        throw std::runtime_error("HerG1Point(uint256): mclBnFp_mapToG1 failed");
    }
    m_p = temp.m_p;
}

void HerG1Point::Init()
{
    boost::lock_guard<boost::mutex> lock(HerG1Point::m_init_mutex);
    static bool is_initialized = false;
    if (is_initialized) return;

    HerInitializer::Init();
    mclBnG1 g;
    const char* serialized_g = "1 3685416753713387016781088315183077757961620795782546409894578378688607592378376318836054947676345821548104185464507 1339506544944476473020471379941921221584933875938349620426543736416511423956333506472724655353366534992391756441569";
    if (mclBnG1_setStr(&g, serialized_g, strlen(serialized_g), 10) == -1) {
        throw std::runtime_error("HerG1Point::Init(): mclBnG1_setStr failed");
    }
    HerG1Point::m_g = g;
    is_initialized = true;
}

HerG1Point HerG1Point::operator=(const mclBnG1& rhs)
{
    m_p = rhs;
    return *this;
}

HerG1Point HerG1Point::operator+(const HerG1Point& rhs) const
{
    HerG1Point ret;
    mclBnG1_add(&ret.m_p, &m_p, &rhs.m_p);
    return ret;
}

HerG1Point HerG1Point::operator-(const HerG1Point& rhs) const
{
    HerG1Point ret;
    mclBnG1_sub(&ret.m_p, &m_p, &rhs.m_p);
    return ret;
}

HerG1Point HerG1Point::operator*(const HerScalar& rhs) const
{
    HerG1Point ret;
    mclBnG1_mul(&ret.m_p, &m_p, &rhs.m_fr);
    return ret;
}

HerG1Point HerG1Point::Double() const
{
    HerG1Point temp;
    mclBnG1_dbl(&temp.m_p, &m_p);
    return temp;
}

HerG1Point HerG1Point::GetBasePoint()
{
    HerG1Point g(HerG1Point::m_g);
    return g;
}

HerG1Point HerG1Point::MapToG1(const std::vector<uint8_t>& vec, const Endianness e)
{
    if (vec.size() == 0) {
        throw std::runtime_error("HerG1Point::MapToG1(): input vector is empty");
    }
    HerG1Point temp;
    mclBnFp v;
    if (e == Endianness::Little) {
        if (mclBnFp_setLittleEndianMod(&v, &vec[0], vec.size()) != 0) {
            throw std::runtime_error("HerG1Point::MapToG1(): mclBnFp_setLittleEndianMod failed");
        }
    } else {
        if (mclBnFp_setBigEndianMod(&v, &vec[0], vec.size()) != 0) {
            throw std::runtime_error("HerG1Point::MapToG1(): mclBnFp_setBigEndianMod failed");
        }
    }

    if (mclBnFp_mapToG1(&temp.m_p, &v) != 0) {
        throw std::runtime_error("HerG1Point::MapToG1(): mclBnFp_mapToG1 failed");
    }
    return temp;
}

HerG1Point HerG1Point::MapToG1(const std::string& s, const Endianness e)
{
    std::vector<uint8_t> vec(s.begin(), s.end());
    return MapToG1(vec);
}

HerG1Point HerG1Point::HashAndMap(const std::vector<uint8_t>& vec)
{
    mclBnG1 p;
    if (mclBnG1_hashAndMapTo(&p, &vec[0], vec.size()) != 0) {
        throw std::runtime_error("HerG1Point::HashAndMap(): mclBnG1_hashAndMapTo failed");
    }
    HerG1Point temp(p);
    return temp;
}

HerG1Point HerG1Point::MulVec(const std::vector<mclBnG1>& g_vec, const std::vector<mclBnFr>& s_vec)
{
    if (g_vec.size() != s_vec.size()) {
        throw std::runtime_error("HerG1Point::MulVec(): sizes of g_vec and s_vec must be equial");
    }

    HerG1Point ret;
    const auto vec_count = g_vec.size();
    mclBnG1_mulVec(&ret.m_p, g_vec.data(), s_vec.data(), vec_count);

    return ret;
}

bool HerG1Point::operator==(const HerG1Point& rhs) const
{
    return mclBnG1_isEqual(&m_p, &rhs.m_p);
}

bool HerG1Point::operator!=(const HerG1Point& rhs) const
{
    return !operator==(rhs);
}

HerG1Point HerG1Point::Rand()
{
    auto g = GetBasePoint();
    return g * HerScalar::Rand();
}

bool HerG1Point::IsValid() const
{
    return mclBnG1_isValid(&m_p) == 1;
}

bool HerG1Point::IsUnity() const
{
    return mclBnG1_isZero(&m_p);
}

std::vector<uint8_t> HerG1Point::GetVch() const
{
    std::vector<uint8_t> b(WIDTH);
    if (mclBnG1_serialize(&b[0], WIDTH, &m_p) == 0) {
        throw std::runtime_error("HerG1Point::GetVch(): mclBnG1_serialize failed");
    }
    return b;
}

void HerG1Point::SetVch(const std::vector<uint8_t>& b)
{
    if (mclBnG1_deserialize(&m_p, &b[0], b.size()) == 0) {
        throw std::runtime_error("HerG1Point::SetVch(): mclBnG1_deserialize failed");
    }
}

std::string HerG1Point::GetString(const int& radix) const
{
    char str[1024];
    if (mclBnG1_getStr(str, sizeof(str), &m_p, radix) == 0) {
        throw std::runtime_error("HerG1Point::GetString(): mclBnG1_getStr failed");
    }
    return std::string(str);
}

unsigned int HerG1Point::GetSerializeSize() const
{
    return ::GetSerializeSize(GetVch());
}

template <typename Stream>
void HerG1Point::Serialize(Stream& s) const
{
    ::Serialize(s, GetVch());
}

template <typename Stream>
void HerG1Point::Unserialize(Stream& s)
{
    std::vector<uint8_t> vch;
    ::Unserialize(s, vch);
    SetVch(vch);
}
