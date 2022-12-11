// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/keys.h>

namespace blsct {

template <typename P>
PublicKey<P> PublicKey<P>::Aggregate(std::vector<PublicKey<P>> vPk)
{
    auto retPoint = Point<P>();
    bool isZero = true;

    for (auto& pk : vPk) {
        Point<P> pkG1;

        bool success = pk.GetG1Point(pkG1);
        if (!success)
            throw std::runtime_error(strprintf("%s: Vector of public keys has an invalid element", __func__));

        retPoint = isZero ? pkG1 : retPoint + pkG1;
        isZero = false;
    }

    return PublicKey(retPoint);
}

template <typename P>
uint256 PublicKey<P>::GetHash() const
{
    CHashWriter ss(SER_GETHASH, 0);
    ss << data;
    return ss.GetHash();
}

template <typename P>
CKeyID PublicKey<P>::GetID() const
{
    return CKeyID(Hash160(data));
}

template <typename P>
bool PublicKey<P>::GetG1Point(Point<P>& ret) const
{
    try {
        ret = Point<P>(data);
    } catch (...) {
        return false;
    }
    return true;
}

template <typename P>
std::string PublicKey<P>::ToString() const
{
    return HexStr(GetVch());
};

template <typename P>
bool PublicKey<P>::operator==(const PublicKey<P>& rhs) const
{
    return GetVch() == rhs.GetVch();
}

template <typename P>
bool PublicKey<P>::IsValid() const
{
    if (data.size() == 0) return false;

    Point<P> g1;

    if (!GetG1Point(g1)) return false;

    return g1.IsValid();
}

template <typename P>
std::vector<unsigned char> PublicKey<P>::GetVch() const
{
    return data;
}

template <typename P>
CKeyID DoublePublicKey<P>::GetID() const
{
    return CKeyID(Hash160(GetVch()));
}

template <typename P>
bool DoublePublicKey<P>::GetViewKey(Point<P>& ret) const
{
    try {
        ret = Point<P>(vk.GetVch());
    } catch (...) {
        return false;
    }

    return true;
}

template <typename P>
bool DoublePublicKey<P>::GetSpendKey(Point<P>& ret) const
{
    try {
        ret = Point<P>(sk.GetVch());
    } catch (...) {
        return false;
    }

    return true;
}

template <typename P>
bool DoublePublicKey<P>::operator==(const DoublePublicKey& rhs) const
{
    return vk == rhs.vk && sk == rhs.sk;
}

template <typename P>
bool DoublePublicKey<P>::IsValid() const
{
    return vk.IsValid() && sk.IsValid();
}

template <typename P>
std::vector<unsigned char> DoublePublicKey<P>::GetVkVch() const
{
    return vk.GetVch();
}

template <typename P>
std::vector<unsigned char> DoublePublicKey<P>::GetSkVch() const
{
    return sk.GetVch();
}

template <typename P>
std::vector<unsigned char> DoublePublicKey<P>::GetVch() const
{
    auto ret = vk.GetVch();
    auto toAppend = sk.GetVch();

    ret.insert(ret.end(), toAppend.begin(), toAppend.end());

    return ret;
}

template <typename P>
bool PrivateKey<P>::operator==(const PrivateKey<P>& rhs) const
{
    return k == rhs.k;
}

template <typename P>
template <typename V>
Point<P> PrivateKey<P>::GetG1Point() const
{
    return Point<P>::GetBasePoint() * Scalar<V>(std::vector<unsigned char>(k.begin(), k.end()));
}

template <typename P>
PublicKey<P> PrivateKey<P>::GetPublicKey() const
{
    return PublicKey(GetG1Point());
}

template <typename P>
template <typename V>
Scalar<V> PrivateKey<P>::GetScalar() const
{
    return Scalar<V>(std::vector<unsigned char>(k.begin(), k.end()));
}

template <typename P>
bool PrivateKey<P>::IsValid() const
{
    if (k.size() == 0) return false;
    return GetScalar().IsValid();
}

template <typename P>
void PrivateKey<P>::SetToZero()
{
    k.clear();
}
} // namespace blsct
