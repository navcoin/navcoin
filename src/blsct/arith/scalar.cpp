// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/scalar.h>

Scalar::Scalar(const uint64_t& n)
{
    mclBnFr_setInt(&fr, (mclInt) n);
}

Scalar::Scalar(const std::vector<uint8_t> &v)
{
    Scalar::SetVch(v);
}

Scalar::Scalar(const Scalar& n)
{
    fr = n.fr;
}

Scalar::Scalar(const uint256& n)
{
    mclBnFr_setInt(&fr, n.GetUint64(0));
}

Scalar Scalar::operator+(const Scalar &b) const
{
    Scalar ret;
    mclBnFr_add(&ret.fr, &fr, &b.fr);
    return ret;
}

Scalar Scalar::operator-(const Scalar &b) const
{
    Scalar ret;
    mclBnFr_sub(&ret.fr, &fr, &b.fr);
    return ret;
}

Scalar Scalar::operator*(const Scalar &b) const
{
    Scalar ret;
    mclBnFr_mul(&ret.fr, &fr, &b.fr);
    return ret;
}

Scalar Scalar::operator/(const Scalar &b) const
{
    Scalar ret;
    mclBnFr_div(&ret.fr, &fr, &b.fr);
    return ret;
}

Scalar Scalar::operator|(const Scalar &b) const
{
    Scalar ret;
    std::vector<uint8_t> frVch = GetVch();
    std::vector<uint8_t> bFrVch = b.GetVch();
    size_t size = std::max(frVch.size(), bFrVch.size());

    std::vector<uint8_t> fFrVch(size);

    for (size_t i = 0; i < size; i++)
    {
        bool l = frVch[i];
        bool r = bFrVch[i];
        fFrVch[i] = l|r;
    }

    ret.SetVch(fFrVch);

    return ret;
}

Scalar Scalar::operator^(const Scalar &b) const
{
    Scalar ret;
    std::vector<uint8_t> frVch = GetVch();
    std::vector<uint8_t> bFrVch = b.GetVch();

    size_t size = std::max(frVch.size(), bFrVch.size());

    std::vector<uint8_t> fFrVch(size);

    for (size_t i = 0; i < size; i++)
    {
        bool l = frVch[i];
        bool r = bFrVch[i];
        fFrVch[i] = l^r;
    }

    ret.SetVch(fFrVch);

    return ret;
}

Scalar Scalar::operator&(const Scalar &b) const
{
    Scalar ret;
    std::vector<uint8_t> frVch = GetVch();
    std::vector<uint8_t> bFrVch = b.GetVch();

    size_t size = std::max(frVch.size(), bFrVch.size());

    std::vector<uint8_t> fFrVch(size);

    for (size_t i = 0; i < size; i++)
    {
        bool l = frVch[i];
        bool r = bFrVch[i];
        fFrVch[i] = l&r;
    }

    ret.SetVch(fFrVch);

    return ret;
}

Scalar Scalar::operator~() const
{
    Scalar ret;
    std::vector<uint8_t> frVch = GetVch();

    size_t size = frVch.size();

    std::vector<uint8_t> fFrVch(size);

    for (size_t i = 0; i < size; i++)
    {
        fFrVch[i] = ~frVch[i];
    }

    ret.SetVch(fFrVch);

    return ret;
}

/**
 * TODO: Need to investigate if this implementation is faster
 * than just running fr += fr or using << 1
 * more discussion over here: https://github.com/herumi/mcl/issues/144
 */
Scalar Scalar::operator<<(unsigned int shift) const
{
    Scalar temp;

    std::vector<uint8_t> vch = GetVch();
    std::vector<uint8_t> finalVch (WIDTH);

    for (int i = 0; i < WIDTH; i++)
        finalVch[i] = 0;
    int k = shift / 8;
    shift = shift % 8;
    for (int i = 0; i < WIDTH; i++) {
        if (i + k + 1 < WIDTH && shift != 0)
            finalVch[i + k + 1] |= (vch[i] >> (8 - shift));
        if (i + k < WIDTH)
            finalVch[i + k] |= (vch[i] << shift);
    }

    temp.SetVch(finalVch);

    return temp;
}

Scalar Scalar::operator>>(unsigned int shift) const
{
    Scalar temp;

    std::vector<uint8_t> vch = GetVch();
    std::vector<uint8_t> finalVch (WIDTH);

    for (int i = 0; i < WIDTH; i++)
        finalVch[i] = 0;
    int k = shift / 8;
    shift = shift % 8;
    for (int i = 0; i < WIDTH; i++) {
        if (i - k - 1 >= 0 && shift != 0)
            finalVch[i - k - 1] |= (vch[i] << (8 - shift));
        if (i - k >= 0)
            finalVch[i - k] |= (vch[i] >> shift);
    }

    temp.SetVch(finalVch);

    return temp;
}

void Scalar::operator=(const uint64_t& n)
{
    mclBnFr_setInt(&fr, (mclInt) n);
}

bool Scalar::operator==(const int &b) const
{
    Scalar temp;
    temp = b;
    return mclBnFr_isEqual(&fr, &temp.fr);
}

bool Scalar::operator==(const Scalar &b) const
{
    return mclBnFr_isEqual(&fr, &b.fr);
}

Scalar Scalar::Invert() const
{
    Scalar temp;
    mclBnFr_inv(&temp.fr, &fr);
    return temp;
}

Scalar Scalar::Negate() const
{
    Scalar temp;
    mclBnFr_neg(&temp.fr, &fr);
    return temp;
}

Scalar Scalar::Rand()
{
    Scalar temp;

    mclBnFr_setByCSPRNG(&temp.fr);

    return temp;
}

int64_t Scalar::GetInt64() const
{
    int64_t ret = 0;
    std::vector<uint8_t> vch = GetVch();
    for (auto i = 0; i < 8; i++)
    {
        ret |= (int64_t) vch[vch.size()-i-1] << i*8;
    }
    return ret;
}

std::vector<uint8_t> Scalar::GetVch() const
{
    std::vector<uint8_t> b(WIDTH);
    mclBnFr_serialize(&b[0], WIDTH, &fr);
    return b;
}

void Scalar::SetVch(const std::vector<uint8_t> &b)
{
    mclBnFr_deserialize(&fr, &b[0], b.size());
}

void Scalar::SetPow2(int n)
{
    Scalar temp = 1;
    while (n != 0) {
        temp = temp * 2;
        --n;
    }

    fr = temp.fr;
}

uint256 Scalar::Hash(const int& n) const
{
    CHashWriter hasher(0,0);
    hasher << *this;
    hasher << n;
    return hasher.GetHash();
}

std::string Scalar::GetString(const int& r)
{
    char str[1024];

    mclBnFr_getStr(str, sizeof(str), &fr, r);

    return std::string(str);
}
