#include "blsct/public_key.h"
#include <blsct/external_api/blsct.h>
#include <blsct/arith/mcl/mcl.h>
#include <blsct/arith/mcl/mcl_init.h>
#include <iostream>
#include <key_io.h>
#include <kernel/chainparams.h>
#include <memory>
#include <mutex>
#include <optional>

static std::shared_ptr<const CChainParams> g_chain;
static std::mutex g_init_mutex;

extern "C" {

bool blsct_init(Chain chain)
{
    {
        std::lock_guard<std::mutex> lock(g_init_mutex);
        if (g_chain != nullptr) return true;

        MclInit for_side_effect_only;

        switch (chain) {
            case MainNet:
                g_chain = std::move(CChainParams::Main());
                break;
            case TestNet:
                g_chain = std::move(CChainParams::TestNet());
                break;
            default:
                return false;
        }
        return true;
    }
}

bool decode_blsct_address(
    const char* blsct_address,
    uint8_t out[blsct::DoublePublicKey::SIZE]
) {
    std::string blsct_address_str(blsct_address);
    auto maybe_dpk = DecodeDoublePublicKey(g_chain, blsct_address_str);

    if (maybe_dpk) {
        auto dpk = maybe_dpk.value();
        if (dpk.IsValid()) {
            auto vk = dpk.vk.Serialize();
            auto sk = dpk.sk.Serialize();
            std::memset(out, vk, blsct::PublicKey::SIZE);
            std::memset(out + blsct::PublicKey::SIZE, sk, blsct::PublicKey::SIZE);
            return true;
        }
    }
    return false;
}

void blsct_test() {

    Mcl::Scalar a(1);
    Mcl::Scalar b(2);

    auto c = a + b;

    auto s = c.GetString();

    std::cout << "The answer is " << s << std::endl;
}

} // extern "C"
