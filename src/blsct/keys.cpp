// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/her/her_g1point.h>
#include <blsct/keys.h>

namespace blsct {

template <typename P>
PublicKey<P> PublicKey<P>::Aggregate(std::vector<PublicKey<P>> vPk)
{
    auto retPoint = P();
    bool isZero = true;

    for (auto& pk : vPk) {
        P pkG1;

        bool success = pk.GetG1Point(pkG1);
        if (!success)
            throw std::runtime_error(strprintf("%s: Vector of public keys has an invalid element", __func__));

        retPoint = isZero ? pkG1 : retPoint + pkG1;
        isZero = false;
    }

    return PublicKey(retPoint);
}
template PublicKey<HerG1Point> PublicKey<HerG1Point>::Aggregate(std::vector<PublicKey<HerG1Point>>);

template <typename P>
uint256 PublicKey<P>::GetHash() const
{
    CHashWriter ss(SER_GETHASH, 0);
    ss << data;
    return ss.GetHash();
}
template uint256 PublicKey<HerG1Point>::GetHash() const;

template <typename P>
CKeyID PublicKey<P>::GetID() const
{
    return CKeyID(Hash160(data));
}
template CKeyID PublicKey<HerG1Point>::GetID() const;

template <typename P>
bool PublicKey<P>::GetG1Point(P& ret) const
{
    try {
        ret = P(data);
    } catch (...) {
        return false;
    }
    return true;
}
template bool PublicKey<HerG1Point>::GetG1Point(HerG1Point& ret) const;

template <typename P>
std::string PublicKey<P>::ToString() const
{
    return HexStr(GetVch());
};
template std::string PublicKey<HerG1Point>::ToString() const;

template <typename P>
bool PublicKey<P>::operator==(const PublicKey<P>& rhs) const
{
    return GetVch() == rhs.GetVch();
}
template bool PublicKey<HerG1Point>::operator==(const PublicKey<HerG1Point>& rhs) const;

template <typename P>
bool PublicKey<P>::IsValid() const
{
    if (data.size() == 0) return false;

    P g1;

    if (!GetG1Point(g1)) return false;

    return g1.IsValid();
}
template bool PublicKey<HerG1Point>::IsValid() const;

template <typename P>
std::vector<unsigned char> PublicKey<P>::GetVch() const
{
    return data;
}
template std::vector<unsigned char> PublicKey<HerG1Point>::GetVch() const;

template <typename P>
CKeyID DoublePublicKey<P>::GetID() const
{
    return CKeyID(Hash160(GetVch()));
}
template CKeyID DoublePublicKey<HerG1Point>::GetID() const;

template <typename P>
bool DoublePublicKey<P>::GetViewKey(P& ret) const
{
    try {
        ret = P(vk.GetVch());
    } catch (...) {
        return false;
    }

    return true;
}
template bool DoublePublicKey<HerG1Point>::GetViewKey(HerG1Point& ret) const;

template <typename P>
bool DoublePublicKey<P>::GetSpendKey(P& ret) const
{
    try {
        ret = P(sk.GetVch());
    } catch (...) {
        return false;
    }

    return true;
}
template bool DoublePublicKey<HerG1Point>::GetSpendKey(HerG1Point& ret) const;

template <typename P>
bool DoublePublicKey<P>::operator==(const DoublePublicKey& rhs) const
{
    return vk == rhs.vk && sk == rhs.sk;
}
template bool DoublePublicKey<HerG1Point>::operator==(const DoublePublicKey& rhs) const;

template <typename P>
bool DoublePublicKey<P>::IsValid() const
{
    return vk.IsValid() && sk.IsValid();
}
template bool DoublePublicKey<HerG1Point>::IsValid() const;

template <typename P>
std::vector<unsigned char> DoublePublicKey<P>::GetVkVch() const
{
    return vk.GetVch();
}
template std::vector<unsigned char> DoublePublicKey<HerG1Point>::GetVkVch() const;

template <typename P>
std::vector<unsigned char> DoublePublicKey<P>::GetSkVch() const
{
    return sk.GetVch();
}
template std::vector<unsigned char> DoublePublicKey<HerG1Point>::GetSkVch() const;

template <typename P>
std::vector<unsigned char> DoublePublicKey<P>::GetVch() const
{
    auto ret = vk.GetVch();
    auto toAppend = sk.GetVch();

    ret.insert(ret.end(), toAppend.begin(), toAppend.end());

    return ret;
}
template std::vector<unsigned char> DoublePublicKey<HerG1Point>::GetVch() const;

template <typename P>
template <typename S>
PrivateKey<P>::PrivateKey(S k_)
{
    if constexpr (std::is_same_v<S, std::vector<uint8_t>>) {
        k.resize(PrivateKey<P>::SIZE);
        memcpy(k.data(), &k_.front(), k.size());
    }
    else if constexpr (std::is_same_v<S, HerScalar>) {
        k.resize(PrivateKey<P>::SIZE);
        std::vector<unsigned char> v = k_.GetVch();
        memcpy(k.data(), &v.front(), k.size());
    } else {
        throw std::runtime_error("Not implemented");
    }
}
template PrivateKey<HerG1Point>::PrivateKey(HerScalar k_);
template PrivateKey<HerG1Point>::PrivateKey(std::vector<uint8_t> k_);

template <typename P>
bool PrivateKey<P>::operator==(const PrivateKey<P>& rhs) const
{
    return k == rhs.k;
}
template bool PrivateKey<HerG1Point>::operator==(const PrivateKey<HerG1Point>& rhs) const;

template <typename P>
template <typename S>
P PrivateKey<P>::GetPoint() const
{
    return Point<P>::GetBasePoint() * S(std::vector<unsigned char>(k.begin(), k.end()));
}
template HerG1Point PrivateKey<HerG1Point>::GetPoint<HerScalar>() const;

template <typename P>
PublicKey<P> PrivateKey<P>::GetPublicKey() const
{
    return PublicKey(GetPoint<HerScalar>());
}
template PublicKey<HerG1Point> PrivateKey<HerG1Point>::GetPublicKey() const;

template <typename P>
template <typename S>
S PrivateKey<P>::GetScalar() const
{
    return S(std::vector<unsigned char>(k.begin(), k.end()));
}
template HerScalar PrivateKey<HerG1Point>::GetScalar() const;

template <typename P>
template <typename S>
bool PrivateKey<P>::IsValid() const
{
    if (k.size() == 0) return false;
    return GetScalar<S>().IsValid();
}
template bool PrivateKey<HerG1Point>::IsValid<HerScalar>() const;

template <typename P>
void PrivateKey<P>::SetToZero()
{
    k.clear();
}
template void PrivateKey<HerG1Point>::SetToZero();

} // namespace blsct
