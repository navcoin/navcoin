// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/scalar.h>

Scalar::Scalar(const int64_t& n)
{
    mclBnFr_setInt(&fr, n);
}

Scalar::Scalar(const std::vector<uint8_t> &v)
{
    Scalar::SetVch(v);
}

Scalar::Scalar(const Scalar& n)
{
    fr = n.fr;
}

Scalar::Scalar(const mclBnFr& nFr)
{
    fr = nFr;
}

Scalar::Scalar(const uint256& n)
{
    // uint256 deserialization is big-endian
    mclBnFr_setBigEndianMod(&fr, n.data(), 32);
}

Scalar::Scalar(const std::string& s, int ioMode)
{
    int r = mclBnFr_setStr(&fr, s.c_str(), s.length(), ioMode);
    if (r == -1) 
    {
        throw std::runtime_error(std::string("Failed to instantiate Scalar from '") + s);
    }
}

void Scalar::Init()
{
    MclInitializer::Init();
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

Scalar Scalar::ApplyBitwiseOp(const Scalar& a, const Scalar& b, 
    std::function<uint8_t(uint8_t, uint8_t)> op) const
{
    Scalar ret;
    auto aVec = a.GetVch();
    auto bVec = b.GetVch();

    // if sizes are the same, bVec becomes longer and aVec becomes shorter 
    auto& longer = aVec.size() > bVec.size() ? aVec : bVec; 
    auto& shorter = bVec.size() < aVec.size() ? bVec : aVec;

    std::vector<uint8_t> cVec(longer.size());

    for (size_t i = 0; i < shorter.size(); i++)
    {
        uint8_t l = longer[i];
        uint8_t r = shorter[i];
        cVec[i] = op(l, r);
    }

    // will do nothing if sizes are the same
    for (size_t i = shorter.size(); i < longer.size(); i++)
    {
        cVec[i] = op(longer[i], 0);
    }
     
    ret.SetVch(cVec);

    return ret;
}

Scalar Scalar::operator|(const Scalar &b) const
{
    auto op = [](uint8_t a, uint8_t b) -> uint8_t { return a|b; };
    return ApplyBitwiseOp(*this, b, op);
}

Scalar Scalar::operator^(const Scalar &b) const
{
    auto op = [](uint8_t a, uint8_t b) -> uint8_t { return a^b; };
    return ApplyBitwiseOp(*this, b, op);
}

Scalar Scalar::operator&(const Scalar &b) const
{
    auto op = [](uint8_t a, uint8_t b) -> uint8_t { return a&b; };
    return ApplyBitwiseOp(*this, b, op);
}

Scalar Scalar::operator~() const
{
    // getting complement of lower 8 bytes only since when 32-byte buffer is 
    // fully complemented, mclBrFr_deserialize returns undesired result
    int64_t nComplementScalar = ~GetInt64();
    Scalar ret(nComplementScalar);

    return ret;
}

/**
 * TODO: Need to investigate if this implementation is faster
 * than just running fr += fr or using << 1
 * more discussion over here: https://github.com/herumi/mcl/issues/144
 */
Scalar Scalar::operator<<(unsigned int shift) const
{
    mclBnFr next;
    mclBnFr prev = fr;
    for(size_t i = 0; i < shift; ++i)
    {
        mclBnFr_add(&next, &prev, &prev);    
        prev = next;
    }
    Scalar ret(prev);

    return ret;

    // replaced below implementation with above has problem when shift is above 7

    // Scalar temp;

    // std::vector<uint8_t> vch = GetVch();
    // std::vector<uint8_t> finalVch (WIDTH);

    // for (int i = 0; i < WIDTH; i++)
    //     finalVch[i] = 0;
    // int k = shift / 8;
    // shift = shift % 8;
    // for (int i = 0; i < WIDTH; i++) {
    //     if (i + k + 1 < WIDTH && shift != 0)
    //         finalVch[i + k + 1] |= (vch[i] >> (8 - shift));
    //     if (i + k < WIDTH)
    //         finalVch[i + k] |= (vch[i] << shift);
    // }

    // temp.SetVch(finalVch);

    // return temp;
}

// assumes that fr contains a number within int64_t range
Scalar Scalar::operator>>(unsigned int shift) const
{
    int64_t n = GetInt64();
    Scalar ret(n >> shift);

    return ret;

    // Scalar temp;

    // std::vector<uint8_t> vch = GetVch();
    // std::vector<uint8_t> finalVch (WIDTH);

    // for (int i = 0; i < WIDTH; i++)
    //     finalVch[i] = 0;
    // int k = shift / 8;
    // shift = shift % 8;
    // for (int i = 0; i < WIDTH; i++) {
    //     if (i - k - 1 >= 0 && shift != 0)
    //         finalVch[i - k - 1] |= (vch[i] << (8 - shift));
    //     if (i - k >= 0)
    //         finalVch[i - k] |= (vch[i] >> shift);
    // }

    // temp.SetVch(finalVch);

    // return temp;
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

bool Scalar::operator!=(const int &b) const
{
    return !operator==(b);
}

bool Scalar::operator!=(const Scalar &b) const
{
    return !operator==(b);
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

    if (mclBnFr_setByCSPRNG(&temp.fr) != 0)
    {
        throw std::runtime_error(std::string("Failed to generate random number"));
    }
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
    if (mclBnFr_serialize(&b[0], WIDTH, &fr) == 0)
    {
        throw std::runtime_error(std::string("Failed to serialize mclBnFr"));
    }
    return b;
}

void Scalar::SetVch(const std::vector<uint8_t> &v)
{
    if (mclBnFr_setBigEndianMod(&fr, &v[0], v.size()) == -1)
    {
        throw std::runtime_error(std::string("Failed to setBigEndianMod vector"));
    }
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

std::string Scalar::GetString(const int& r) const
{
    char str[1024];

    if (mclBnFr_getStr(str, sizeof(str), &fr, r) == 0)
    {
        throw std::runtime_error(std::string("Failed to get string representation of mclBnFr"));
    }
    return std::string(str);
}

// since GetVch returns 32-byte vector, maximum bit index is 8 * 32 - 1 = 255
bool Scalar::GetBit(uint8_t n) const 
{
    std::vector<uint8_t> vch = GetVch();
    assert(vch.size() == 32);

    const uint8_t vchIdx = 31 - n / 8;  // vch is little-endian 
    const uint8_t bitIdx = n % 8;
    const uint8_t mask = 1 << bitIdx;
    const bool bit = (vch[vchIdx] & mask) != 0;

    return bit;
}

Scalar Scalar::HashAndMap(std::vector<unsigned char> vch) {
/*
it hashes a value and maps it as a valid point in the g1 group
uint256 goes up to ~0x0
but the range of the g1 group is smaller
2^256 would not be a valid element
when using the hashAndMap function you need to set map mode to 0
and then set it back to 5 after

  mcl.setMapToMode(0);
  let g = d.mapToG1();
  mcl.setMapToMode(5);

something like this (this is js code and using other functions)
--
it should be hashed and mod the order before set
 */
    Scalar x;
    return x;
}