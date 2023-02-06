// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#define BLS_ETH 1

#include <algorithm>
#include <bls/bls384_256.h>
#include <blsct/signature.h>
#include <iterator>
#include <streams.h>
#include <tinyformat.h>

namespace blsct {

Signature Signature::Aggregate(const std::vector<blsct::Signature>& sigs)
{
    std::vector<blsSignature> bls_sigs;
    std::transform(sigs.begin(), sigs.end(), std::back_inserter(bls_sigs), [](auto sig) {
        return sig.m_data;
    });
    blsct::Signature aggr_sig;
    blsAggregateSignature(&aggr_sig.m_data, &bls_sigs[0], bls_sigs.size());
    return aggr_sig;
}

std::vector<unsigned char> Signature::GetVch() const
{
    size_t ser_size = mclBn_getFpByteSize() * 2;
    std::vector<unsigned char> buf(ser_size);
    size_t n = mclBnG2_serialize(&buf[0], ser_size, &m_data.v);
    if (n != ser_size) {
        throw std::runtime_error(strprintf(
            "%s: Expected serialization size to be %ld, but got %ld", __func__, ser_size, n));
    }
    return buf;
}

void Signature::SetVch(const std::vector<unsigned char>& buf)
{
    size_t ser_size = mclBn_getFpByteSize() * 2;
    if (buf.size() != ser_size) {
        throw std::runtime_error(strprintf(
            "%s: Expected serialized Signature to be of size %ld, but got %ld", __func__, ser_size, buf.size()));
    }
    if (mclBnG2_deserialize(&m_data.v, &buf[0], ser_size) == 0) {
        throw std::runtime_error(strprintf("%s: Deserialization failed", __func__));
    }
}

} // namespace blsct
