// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/mcl/mcl.h>
#include <blsct/keys.h>

namespace blsct {

using Point = MclG1Point;
using Scalar = MclScalar;

PublicKey PublicKey::Aggregate(std::vector<PublicKey> vPk)
{
    if (vPk.size() == 0)
        throw std::runtime_error(strprintf("%s: Vector of public keys is empty", __func__));

    auto retPoint = Point();
    bool isZero = true;

    for (auto& pk : vPk) {
        Point pkG1;

        bool success = pk.GetG1Point(pkG1);
        if (!success)
            throw std::runtime_error(strprintf("%s: Vector of public keys has an invalid element", __func__));

        retPoint = isZero ? pkG1 : retPoint + pkG1;
        isZero = false;
    }

    return PublicKey(retPoint);
}

uint256 PublicKey::GetHash() const
{
    CHashWriter ss(SER_GETHASH, 0);
    ss << data;
    return ss.GetHash();
}

CKeyID PublicKey::GetID() const
{
    return CKeyID(Hash160(data));
}

bool PublicKey::GetG1Point(Point& ret) const
{
    try {
        ret = Point(data);
    } catch (...) {
        return false;
    }
    return true;
}

std::string PublicKey::ToString() const
{
    return HexStr(GetVch());
};

bool PublicKey::operator==(const PublicKey& rhs) const
{
    return GetVch() == rhs.GetVch();
}

bool PublicKey::IsValid() const
{
    if (data.size() == 0) return false;

    Point g1;

    if (!GetG1Point(g1)) return false;

    return g1.IsValid();
}

std::vector<unsigned char> PublicKey::GetVch() const
{
    return data;
}

CKeyID DoublePublicKey::GetID() const
{
    return CKeyID(Hash160(GetVch()));
}

bool DoublePublicKey::GetViewKey(Point& ret) const
{
    try {
        ret = Point(vk.GetVch());
    } catch (...) {
        return false;
    }

    return true;
}

bool DoublePublicKey::GetSpendKey(Point& ret) const
{
    try {
        ret = Point(sk.GetVch());
    } catch (...) {
        return false;
    }

    return true;
}

bool DoublePublicKey::operator==(const DoublePublicKey& rhs) const
{
    return vk == rhs.vk && sk == rhs.sk;
}

bool DoublePublicKey::IsValid() const
{
    return vk.IsValid() && sk.IsValid();
}

std::vector<unsigned char> DoublePublicKey::GetVkVch() const
{
    return vk.GetVch();
}

std::vector<unsigned char> DoublePublicKey::GetSkVch() const
{
    return sk.GetVch();
}

std::vector<unsigned char> DoublePublicKey::GetVch() const
{
    auto ret = vk.GetVch();
    auto toAppend = sk.GetVch();

    ret.insert(ret.end(), toAppend.begin(), toAppend.end());

    return ret;
}

PrivateKey::PrivateKey(Scalar k_)
{
    if (k_.IsZero()) {
        throw std::runtime_error("Private key needs to be a non-zero scalar");
    }
    k.resize(PrivateKey::SIZE);
    std::vector<unsigned char> v = k_.GetVch();
    memcpy(k.data(), &v.front(), k.size());
}

PrivateKey::PrivateKey(CPrivKey k_)
{
    k.resize(PrivateKey::SIZE);
    memcpy(k.data(), &k_.front(), k.size());
}

bool PrivateKey::operator==(const PrivateKey& rhs) const
{
    return k == rhs.k;
}

Point PrivateKey::GetPoint() const
{
    return Point::GetBasePoint() * Scalar(std::vector<unsigned char>(k.begin(), k.end()));
}

PublicKey PrivateKey::GetPublicKey() const
{
    return PublicKey(GetPoint());
}

Scalar PrivateKey::GetScalar() const
{
    return Scalar(std::vector<unsigned char>(k.begin(), k.end()));
}

bool PrivateKey::IsValid() const
{
    if (k.size() == 0) return false;
    Scalar s = GetScalar();
    return s.IsValid() && !s.IsZero();
}

void PrivateKey::SetToZero()
{
    k.clear();
}

} // namespace blsct

