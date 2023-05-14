// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/secp256k1/secp256k1_scalar.h>
#include <blsct/common.h>
#include <crypto/sha256.h>
#include <key.h>
#include <util/strencodings.h>
#include <stdexcept>

Secp256k1Scalar::Secp256k1Scalar()
{
    secp256k1_export_scalar_clear(&m_scalar);
}

Secp256k1Scalar::Secp256k1Scalar(const uint32_t& n)
{
    secp256k1_export_scalar_set_uint32(&m_scalar, n);
}

Secp256k1Scalar::Secp256k1Scalar(const std::vector<uint8_t>& v)
{
    Secp256k1Scalar::SetVch(v);
}

Secp256k1Scalar::Secp256k1Scalar(const Secp256k1Scalar::Underlying& other_underlying)
{
    memcpy(&m_scalar, &other_underlying, sizeof(Underlying));
}

Secp256k1Scalar::Secp256k1Scalar(const std::vector<uint8_t>& msg, uint8_t index)
{
    std::vector<uint8_t> vec;
    vec.resize(msg.size() + 1);
    vec[0] = index;
    std::copy(msg.begin(), msg.end(), &vec[1]);

    CSHA256 hasher; // creating local instance for thread safely
    hasher.Write(&vec[0], vec.size());
    uint8_t hash[CSHA256::OUTPUT_SIZE];
    hasher.Finalize(hash);

    secp256k1_export_scalar_set_bytes(&m_scalar, hash);
}

Secp256k1Scalar::Secp256k1Scalar(const uint256& n)
{
    std::vector<uint8_t> vec(n.begin(), n.end());
    Secp256k1Scalar::SetVch(vec);
}

Secp256k1Scalar::Secp256k1Scalar(const Secp256k1Scalar& s)
{
    memcpy(&m_scalar, &s.m_scalar, sizeof(Secp256k1Scalar::Underlying));
}

Secp256k1Scalar& Secp256k1Scalar::operator=(const Secp256k1Scalar& s)
{
    memcpy(&m_scalar, &s.m_scalar, sizeof(Secp256k1Scalar::Underlying));
    return *this;
}

Secp256k1Scalar::Secp256k1Scalar(Secp256k1Scalar&& s)
{
    memcpy(&m_scalar, &s.m_scalar, sizeof(Secp256k1Scalar::Underlying));
    secp256k1_export_scalar_clear(&s.m_scalar);
}

Secp256k1Scalar& Secp256k1Scalar::operator=(Secp256k1Scalar&& s)
{
    if (this != &s) {
        memcpy(&m_scalar, &s.m_scalar, sizeof(Secp256k1Scalar::Underlying));
        secp256k1_export_scalar_clear(&s.m_scalar);
    }
    return *this;
}

Secp256k1Scalar Secp256k1Scalar::operator+(const Secp256k1Scalar& rhs) const
{
    Secp256k1Scalar ret;
    secp256k1_export_scalar_add(&ret.m_scalar, &m_scalar, &rhs.m_scalar);
    return ret;
}

Secp256k1Scalar Secp256k1Scalar::operator-(const Secp256k1Scalar& rhs) const
{
    Secp256k1Scalar ret;
    secp256k1_export_scalar_sub(&ret.m_scalar, &m_scalar, &rhs.m_scalar);
    return ret;
}

Secp256k1Scalar Secp256k1Scalar::operator*(const Secp256k1Scalar& rhs) const
{
    Secp256k1Scalar ret;
    secp256k1_export_scalar_mul(&ret.m_scalar, &m_scalar, &rhs.m_scalar);
    return ret;
}

Secp256k1Scalar Secp256k1Scalar::operator/(const Secp256k1Scalar& rhs) const
{
    Secp256k1Scalar ret;
    secp256k1_export_scalar_div(&ret.m_scalar, &m_scalar, &rhs.m_scalar);
    return ret;
}

void Secp256k1Scalar::operator=(const uint32_t& n)
{
    secp256k1_export_scalar_set_uint32(&m_scalar, n);
}

bool Secp256k1Scalar::operator==(const uint32_t& rhs) const
{
    Secp256k1Scalar tmp(rhs);
    return secp256k1_export_scalar_is_equal_to(&m_scalar, &tmp.m_scalar) != 0;
}

bool Secp256k1Scalar::operator==(const Secp256k1Scalar& rhs) const
{
    return secp256k1_export_scalar_is_equal_to(&m_scalar, &rhs.m_scalar) != 0;
}

bool Secp256k1Scalar::operator!=(const uint32_t& b) const
{
    return !operator==(b);
}

bool Secp256k1Scalar::operator!=(const Secp256k1Scalar& b) const
{
    return !operator==(b);
}

const Secp256k1Scalar::Underlying& Secp256k1Scalar::GetUnderlying() const
{
    return m_scalar;
}

bool Secp256k1Scalar::IsValid() const
{
    return true; // m_scalar cannot be invalid
}

bool Secp256k1Scalar::IsZero() const
{
    return secp256k1_export_scalar_is_zero(&m_scalar) != 0;
}

Secp256k1Scalar Secp256k1Scalar::Invert() const
{
    if (secp256k1_export_scalar_is_zero(&m_scalar) != 0) {
        throw std::runtime_error("Inverse of zero is undefined");
    }
    Secp256k1Scalar ret;
    secp256k1_export_scalar_invert(&ret.m_scalar, &m_scalar);
    return ret;
}

Secp256k1Scalar Secp256k1Scalar::Negate() const
{
    Secp256k1Scalar ret;
    secp256k1_export_scalar_negate(&ret.m_scalar, &m_scalar);
    return ret;
}

Secp256k1Scalar Secp256k1Scalar::Square() const
{
    Secp256k1Scalar ret;
    secp256k1_export_scalar_square(&ret.m_scalar, &m_scalar);
    return ret;
}

Secp256k1Scalar Secp256k1Scalar::Cube() const
{
    Secp256k1Scalar ret;
    secp256k1_export_scalar_cube(&ret.m_scalar, &m_scalar);
    return ret;
}

Secp256k1Scalar Secp256k1Scalar::Pow(const Secp256k1Scalar& n) const
{
    // A variant of double-and-add method
    Secp256k1Scalar temp(1);
    secp256k1_scalar bit_val;
    bit_val = m_scalar;
    auto bits = n.ToBinaryVec();

    for (auto it = bits.rbegin(); it != bits.rend(); ++it) {
        Secp256k1Scalar s(bit_val);
        if (*it) {
            secp256k1_export_scalar_mul(&temp.m_scalar, &temp.m_scalar, &bit_val);
        }
        secp256k1_export_scalar_mul(&bit_val, &bit_val, &bit_val);
    }
    return temp;
}

Secp256k1Scalar Secp256k1Scalar::Rand(bool exclude_zero)
{
    Secp256k1Scalar ret;

    while (true) {
        CKey key;
        key.MakeNewKey(false);
        secp256k1_export_scalar_set_bytes(&ret.m_scalar, reinterpret_cast<const uint8_t*>(key.data()));
        if (!exclude_zero || secp256k1_export_scalar_is_zero(&ret.m_scalar) == 0) break;
    }
    return ret;
}

uint64_t Secp256k1Scalar::GetUint64() const
{
    const size_t BUF_SIZE = 32;
    uint8_t buf[BUF_SIZE];
    secp256k1_export_scalar_get_bytes(&buf, &m_scalar);

    uint64_t ret = 0;
    for (auto i = 0; i < 8; ++i) {
        ret |= (uint64_t)buf[BUF_SIZE - 1 - i] << i * 8;
    }
    return ret;
}

std::vector<uint8_t> Secp256k1Scalar::GetVch(const bool trim_preceeding_zeros) const
{
    uint8_t buf[Secp256k1Scalar::SERIALIZATION_SIZE];
    secp256k1_export_scalar_get_bytes(&buf, &m_scalar);

    std::vector<uint8_t> vec { buf, buf + Secp256k1Scalar::SERIALIZATION_SIZE };
    if (trim_preceeding_zeros) {
         vec = blsct::Common::TrimPreceedingZeros<uint8_t>(vec);
    }
    blsct::Common::AddZeroIfEmpty<uint8_t>(vec);
    return vec;
}

void Secp256k1Scalar::SetVch(const std::vector<uint8_t>& v)
{
    if (v.size() != SERIALIZATION_SIZE) {
        throw new std::runtime_error("Vector for deserialization must be a 32-byte long");
    }
    secp256k1_export_scalar_set_bytes(&m_scalar, &v[0]);
}

void Secp256k1Scalar::SetPow2(const uint32_t& n)
{
    uint32_t i = n;
    Secp256k1Scalar temp = 1;

    while (i != 0) {
        temp = temp * 2;
        --i;
    }
    m_scalar = temp.m_scalar;
}

std::string Secp256k1Scalar::GetString() const
{
    auto vec = GetVch(true);
    auto hex = HexStr(vec);
    return hex.at(0) == '0' ? hex.substr(1) : hex;
}

std::vector<bool> Secp256k1Scalar::ToBinaryVec() const
{
    std::vector<bool> vec;
    vec.resize(256);
    size_t p = vec.size();

    for (size_t i=0; i<8; ++i) {
        uint8_t offset = i * 32;
        uint32_t r = secp256k1_export_scalar_get_bits(offset, &m_scalar);

        uint32_t mask = 1;
        for (size_t j=0; j<32; ++j) {
            bool bit = r & mask;
            vec[--p] = bit;
            mask <<= 1;
        }
    }
    vec = blsct::Common::TrimPreceedingZeros<bool>(vec);
    blsct::Common::AddZeroIfEmpty<bool>(vec);
    return vec;
}

uint256 Secp256k1Scalar::GetHashWithSalt(const uint64_t& salt) const
{
    CHashWriter hasher(0, 0);
    hasher << *this;
    hasher << salt;
    return hasher.GetHash();
}
