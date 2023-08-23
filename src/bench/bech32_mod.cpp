// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <bench/bench.h>

#include <bech32_mod.h>
#include <util/strencodings.h>

#include <string>
#include <vector>


static void Bech32ModEncode(benchmark::Bench& bench)
{
    std::vector<uint8_t> v = ParseHex("c97f5a67ec381b760aeaf67573bc164845ff39a3bb26a1cee401ac67243b48db");
    std::vector<unsigned char> tmp = {0};
    tmp.reserve(1 + 32 * 8 / 5);
    ConvertBits<8, 5, true>([&](unsigned char c) { tmp.push_back(c); }, v.begin(), v.end());
    bench.batch(v.size()).unit("byte").run([&] {
        bech32_mod::Encode(bech32_mod::Encoding::BECH32, "bc", tmp);
    });
}


static void Bech32ModDecode(benchmark::Bench& bench)
{
    std::string addr = "bc1qkallence7tjawwvy0dwt4twc62qjgaw8f4vlhyd006d99f09";
    bench.batch(addr.size()).unit("byte").run([&] {
        bech32_mod::Decode(addr);
    });
}


BENCHMARK(Bech32ModEncode, benchmark::PriorityLevel::HIGH);
BENCHMARK(Bech32ModDecode, benchmark::PriorityLevel::HIGH);
