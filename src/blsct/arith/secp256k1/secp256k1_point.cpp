// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/secp256k1/secp256k1_point.h>
#include <util/strencodings.h>
#include <numeric>
#include <streams.h>
#include <cstring>
#include <array>
#include <vector>
#include <stdexcept>

Secp256k1Point::Secp256k1Point()
{
    secp256k1_export_group_set_infinity(&m_point);
}

Secp256k1Point::Secp256k1Point(const std::vector<uint8_t>& v)
{
    Secp256k1Point::SetVch(v);
}

Secp256k1Point::Secp256k1Point(const Secp256k1Point::Underlying& p)
{
    memcpy(&m_point, &p, sizeof(Secp256k1Point::Underlying));
}

Secp256k1Point::Secp256k1Point(const uint256& n)
{
    std::vector<uint8_t> vec(n.begin(), n.end());
    auto p = MapToPoint(vec);
    m_point = p.m_point;
}

Secp256k1Point::Secp256k1Point(const Secp256k1Point& p)
{
    memcpy(&m_point, &p.m_point, sizeof(Secp256k1Point::Underlying));
}

Secp256k1Point::Secp256k1Point(Secp256k1Point&& p)
{
    memcpy(&m_point, &p.m_point, sizeof(Secp256k1Point::Underlying));
    secp256k1_export_group_clear(&p.m_point);
}

Secp256k1Point& Secp256k1Point::operator=(const Secp256k1Point& p)
{
    memcpy(&m_point, &p.m_point, sizeof(Secp256k1Point::Underlying));
    return *this;
}

Secp256k1Point& Secp256k1Point::operator=(Secp256k1Point&& p)
{
    if (this != &p) {
        memcpy(&m_point, &p.m_point, sizeof(Secp256k1Point::Underlying));
        secp256k1_export_group_clear(&p.m_point);
    }
    return *this;
}

const Secp256k1Point::Underlying& Secp256k1Point::GetUnderlying() const
{
    return m_point;
}

Secp256k1Point Secp256k1Point::operator=(const Secp256k1Point::Underlying& p)
{
    memcpy(&m_point, &p, sizeof(Secp256k1Point::Underlying));
    return *this;
}

Secp256k1Point Secp256k1Point::operator+(const Secp256k1Point& rhs) const
{
    Secp256k1Point ret;
    secp256k1_export_group_add(&ret.m_point, &m_point, &rhs.m_point);
    return ret;
}

Secp256k1Point Secp256k1Point::operator-(const Secp256k1Point& rhs) const
{
    Secp256k1Point ret;
    secp256k1_export_group_subtract(&ret.m_point, &m_point, &rhs.m_point);
    return ret;
}

Secp256k1Point Secp256k1Point::operator*(const Secp256k1Point::Scalar& rhs) const
{
    Secp256k1Point ret;
    secp256k1_export_group_ecmult_const(&ret.m_point, &m_point, &rhs.m_scalar);
    return ret;
}

std::vector<Secp256k1Point> Secp256k1Point::operator*(const std::vector<Secp256k1Point::Scalar>& ss) const
{
    if (ss.size() == 0) {
        throw std::runtime_error("Cannot multiply Secp256k1Point by empty scalar vector");
    }
    std::vector<Secp256k1Point> ret;
    Secp256k1Point p = *this;

    for (size_t i = 0; i < ss.size(); ++i) {
        Secp256k1Point q = p * ss[i];
        ret.push_back(q);
    }
    return ret;
}

Secp256k1Point Secp256k1Point::Double() const
{
    Secp256k1Point ret;
    secp256k1_export_group_double(&ret.m_point, &m_point);
    return ret;
}

Secp256k1Point Secp256k1Point::GetBasePoint()
{
    Secp256k1Point ret;
    secp256k1_export_group_get_generator(&ret.m_point);
    return ret;
}

Secp256k1Point Secp256k1Point::MapToPoint(const std::vector<uint8_t>& vec, const Endianness e)
{
    if (vec.size() == 0) {
        throw std::runtime_error("Cannot map empty input vector to a point");
    }
    Secp256k1Point ret;
    secp256k1_export_group_generator_generate(&ret.m_point, &vec[0], vec.size());
    return ret;
}

Secp256k1Point Secp256k1Point::MapToPoint(const std::string& s, const Endianness e)
{
    if (s.length() == 0) {
        throw std::runtime_error("Cannot map empty input string to a point");
    }
    Secp256k1Point ret;
    std::vector<uint8_t> vec(s.begin(), s.end());
    secp256k1_export_group_generator_generate(&ret.m_point, &vec[0], vec.size());
    return ret;
}

bool Secp256k1Point::operator==(const Secp256k1Point& rhs) const
{
    return secp256k1_export_group_is_equal_to(&m_point, &rhs.m_point) != 0;
}

bool Secp256k1Point::operator!=(const Secp256k1Point& rhs) const
{
    return !operator==(rhs);
}

Secp256k1Point Secp256k1Point::Rand()
{
    auto n = Scalar::Rand();
    auto vec = n.GetVch();
    return MapToPoint(vec);
}

bool Secp256k1Point::IsValid() const
{
    return secp256k1_export_group_is_valid(&m_point) != 0;
}

bool Secp256k1Point::IsZero() const
{
    return secp256k1_export_group_is_infinity(&m_point) != 0;
}

secp256k1_ge_storage_alias Secp256k1Point::VecToStorage(const std::vector<uint8_t>& vec)
{
    if (vec.size() != SERIALIZATION_SIZE) {
        throw std::runtime_error("Invalid vector size");
    }
    secp256k1_ge_storage_alias st;
    std::vector<secp256k1_fe_storage*> fe_sts = {&st.x, &st.y};
    size_t vec_base_idx = 0;

    for (auto fe_st: fe_sts) {
        for (size_t i=0; i<4; ++i) {
            // convert 8 bytes in vec to uint64_t
            uint64_t v = 0;
            for (size_t j=0; j<8; ++j) {
                v |= static_cast<uint64_t>(vec[vec_base_idx + j]) << (j * 8);
            }
            fe_st->n[i] = v;
            vec_base_idx += 8;
        }
    }
    return st;
}

void Secp256k1Point::SetVch(const std::vector<uint8_t>& vec)
{
    auto st = VecToStorage(vec);
    secp256k1_gej_alias x;
    secp256k1_export_group_deserialize(&x, &st);
    m_point = x;
}

std::vector<uint8_t> Secp256k1Point::StorageToVec(const secp256k1_ge_storage_alias& st)
{
    std::vector<uint8_t> ret(SERIALIZATION_SIZE);
    size_t p = 0;
    std::vector<secp256k1_fe_storage> fe_sts = {st.x, st.y};

    for (auto fe_st: fe_sts) {
        for (size_t i=0; i<4; ++i) {
            uint64_t n = fe_st.n[i];
            for (size_t unused=0; unused<8; ++unused) {  // repeat 8 times
                ret[p] = n & 0xff;
                n >>= 8;
                ++p;
            }
        }
    }
    return ret;
}

std::vector<uint8_t> Secp256k1Point::GetVch() const
{
    secp256k1_ge_storage_alias st;
    secp256k1_export_group_serialize(&st, &m_point);
    return StorageToVec(st);
}

std::string Secp256k1Point::GetString() const
{
    auto vec = GetVch();
    return HexStr(vec);
}
