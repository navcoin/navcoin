// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/util.h>

namespace blsct {

std::array<uint8_t,8> Util::uint64_to_bytes(const uint64_t& from)
{
    std::array<std::uint8_t,8> to;
    std::memcpy(&to[0], &from, 8);
    return to;
}

uint64_t Util::bytes_to_uint64(const std::array<uint8_t,8>& from)
{
    uint64_t to;
    std::memcpy(&to, &from[0], 8);
    return to;
}

}
