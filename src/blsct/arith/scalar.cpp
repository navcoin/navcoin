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
    std::vector<uint8_t> fFrVch;
    size_t size = std::max(frVch.size(), bFrVch.size());

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
    std::vector<uint8_t> fFrVch;
    size_t size = std::max(frVch.size(), bFrVch.size());

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
    std::vector<uint8_t> fFrVch;
    size_t size = std::max(frVch.size(), bFrVch.size());

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
    std::vector<uint8_t> fFrVch;
    size_t size = frVch.size();

    for (size_t i = 0; i < size; i++)
    {
        fFrVch[i] = !frVch[i];
    }

    ret.SetVch(fFrVch);

    return ret;
}

Scalar Scalar::operator<<(const int &b) const
{
    /* Scalar ret; */
    /* bn_lsh(ret.bn, this->bn, b); */
    /* return ret; */
}

Scalar Scalar::operator>>(const int &b) const
{
    /* Scalar ret; */
    /* bn_rsh(ret.bn, this->bn, b); */
    /* return ret; */
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

std::vector<uint8_t> Scalar::GetVch() const
{
    std::vector<uint8_t> b;
    mclBnFr_serialize(&b, b.size(), &fr);
    return b;
}

void Scalar::SetVch(const std::vector<uint8_t> &b)
{
    mclBnFr_deserialize(&fr, &b[0], b.size());
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

int64_t Scalar::GetInt64() const
{
    /* int64_t ret = 0; */
    /* for (int64_t i = 0; i < 64; i++) */
    /* { */
    /*     ret |= (int64_t)bn_get_bit(this->bn, i) << i; */
    /* } */
    /* return ret; */
}

uint256 Scalar::Hash(const int& n) const
{
    /* CHashWriter hasher(0,0); */
    /* hasher << *this; */
    /* hasher << n; */
    /* return hasher.GetHash(); */
}
