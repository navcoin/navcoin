// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_KEYS_H
#define NAVCOIN_BLSCT_KEYS_H

#include <hash.h>
#include <key.h>
#include <serialize.h>
#include <streams.h>
#include <tinyformat.h>
#include <uint256.h>
#include <util/strencodings.h>
#include <version.h>
#include <blsct/arith/mcl/mcl.h>
#include <blsct/signature.h>

namespace blsct {
static const std::string subAddressHeader = "SubAddress\0";

class PublicKey
{
private:
    using Point = MclG1Point;

    std::vector<unsigned char> data;

public:
    static constexpr size_t SIZE = 48;

    PublicKey() { data.clear(); }
    PublicKey(const Point& pk) : data(pk.GetVch()) {}
    PublicKey(const std::vector<unsigned char>& pk) : data(pk) {}

    SERIALIZE_METHODS(PublicKey, obj) { READWRITE(obj.data); }

    static PublicKey Aggregate(std::vector<PublicKey> vPk);

    uint256 GetHash() const;
    CKeyID GetID() const;

    std::string ToString() const;

    bool operator==(const PublicKey& rhs) const;

    bool IsValid() const;

    bool GetG1Point(Point& ret) const;
    std::vector<unsigned char> GetVch() const;
};

class DoublePublicKey
{
private:
    using Point = MclG1Point;

    PublicKey vk;
    PublicKey sk;

public:
    static constexpr size_t SIZE = 48 * 2;

    DoublePublicKey() {}
    DoublePublicKey(const Point& vk_, const Point& sk_) : vk(vk_.GetVch()), sk(sk_.GetVch()) {}
    DoublePublicKey(const std::vector<unsigned char>& vk_, const std::vector<unsigned char>& sk_) : vk(vk_), sk(sk_) {}

    SERIALIZE_METHODS(DoublePublicKey, obj) { READWRITE(obj.vk.GetVch(), obj.sk.GetVch()); }

    uint256 GetHash() const;
    CKeyID GetID() const;

    bool GetViewKey(Point& ret) const;
    bool GetSpendKey(Point& ret) const;

    bool operator==(const DoublePublicKey& rhs) const;

    bool IsValid() const;

    std::vector<unsigned char> GetVkVch() const;
    std::vector<unsigned char> GetSkVch() const;
    std::vector<unsigned char> GetVch() const;
};

class PrivateKey
{
private:
    using Point = MclG1Point;
    using Scalar = MclScalar;

    CPrivKey k;

public:
    static constexpr size_t SIZE = 32;

    PrivateKey() { k.clear(); }
    PrivateKey(Scalar k_);
    PrivateKey(CPrivKey k_);

    SERIALIZE_METHODS(PrivateKey, obj) { READWRITE(std::vector<unsigned char>(obj.k.begin(), obj.k.end())); }

    bool operator==(const PrivateKey& rhs) const;

    Point GetPoint() const;
    PublicKey GetPublicKey() const;
    Scalar GetScalar() const;
    bool IsValid() const;
    void SetToZero();

    friend class CCryptoKeyStore;
    friend class CBasicKeyStore;
};

} // namespace blsct

#endif // NAVCOIN_BLSCT_KEYS_H
