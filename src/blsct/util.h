// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_UTIL_H
#define NAVCOIN_BLSCT_UTIL_H

#include <array>
#include <cstring>

namespace blsct {

struct Util
{
    static std::array<uint8_t,8> uint64_to_bytes(const uint64_t& from);
    static uint64_t bytes_to_uint64(const std::array<uint8_t,8>& from);
};

}

#endif  // NAVCOIN_BLSCT_UTIL_H