#include <blsct/arith/mcl/mcl.h>
#include <blsct/arith/mcl/mcl_init.h>
#include "blsct/bech32_mod.h"
#include <blsct/external_api/blsct.h>
#include <blsct/key_io.h>
#include <blsct/public_key.h>

#include <iostream>
#include <memory>
#include <mutex>
#include <optional>

static std::string g_chain;
static std::mutex g_init_mutex;

extern "C" {

bool blsct_init(enum Chain chain)
{
    {
        std::lock_guard<std::mutex> lock(g_init_mutex);
        if (!g_chain.empty()) return true;

        MclInit for_side_effect_only;

        switch (chain) {
            case MainNet:
                g_chain = blsct::bech32_hrp::Main;
                break;

            case TestNet:
                g_chain = blsct::bech32_hrp::TestNet;
                break;

            case SigNet:
                g_chain = blsct::bech32_hrp::SigNet;
                break;

            case RegTest:
                g_chain = blsct::bech32_hrp::RegTest;
                break;

            default:
                return false;
        }
        return true;
    }
}

bool blsct_decode_address(
    const char* blsct_addr,
    uint8_t ser_dpk[DOUBLE_PUBLIC_KEY_SIZE]
) {
    try {
        std::string blsct_addr_str(blsct_addr);

        if (blsct_addr_str.size() != ENCODED_DPK_SIZE) return false;
        auto maybe_dpk = blsct::DecodeDoublePublicKey(g_chain, blsct_addr_str);
        if (maybe_dpk) {
            auto dpk = maybe_dpk.value();
            if (dpk.IsValid()) {
                auto buf = dpk.GetVch();
                std::memcpy(ser_dpk, &buf[0], DOUBLE_PUBLIC_KEY_SIZE);
                return true;
            }
        }
    } catch(...) {}

    return false;
}

bool blsct_encode_address(
    const uint8_t ser_dpk[DOUBLE_PUBLIC_KEY_SIZE],
    char* blsct_addr,
    enum AddressEncoding encoding
) {
    try {
        if (encoding != Bech32 && encoding != Bech32M) {
            return false;
        }
        auto bech32_encoding = encoding == Bech32 ?
            bech32_mod::Encoding::BECH32 : bech32_mod::Encoding::BECH32M;

        std::vector<uint8_t> dpk_vec(ser_dpk, ser_dpk + blsct::DoublePublicKey::SIZE);
        auto dpk = blsct::DoublePublicKey(dpk_vec);

        auto dpk_str = blsct::EncodeDoublePublicKey(g_chain, bech32_encoding, dpk);
        std::memcpy(blsct_addr, dpk_str.c_str(), ENCODED_DPK_SIZE + 1);
        return true;

    } catch(...) {}

    return false;
}

} // extern "C"
