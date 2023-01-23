// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <vector>
#include <blsct/bls12_381_common.h>

namespace blsct {

std::vector<uint8_t> BLS12_381_Common::AugmentMessage(const PublicKey& pk, const Message msg)
{
    auto pk_data = pk.GetVch();
    std::vector<uint8_t> aug_msg(pk_data);
    aug_msg.insert(aug_msg.end(), msg.begin(), msg.end());
    return aug_msg;
}

}
