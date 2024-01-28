// Copyright (c) 2024 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H
#define NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H

#include <stdint.h>
#include <stdbool.h>

#define PUBLIC_KEY_SIZE 48
#define DOUBLE_PUBLIC_KEY_SIZE 96
#define ENCODED_DPK_SIZE 165

/*
 * API designed for JavaScript, Python, C, Rust, and Golang
 * with primary focus on JavaScript, Python, and C
 */

#ifdef __cplusplus
extern "C" {
#endif

enum Chain {
    MainNet,
    TestNet,
    SigNet,
    RegTest
};

struct DoublePublicKey {
    uint8_t vk[PUBLIC_KEY_SIZE];
    uint8_t sk[PUBLIC_KEY_SIZE];
};

enum AddressEncoding {
    Bech32,
    Bech32M
};

bool blsct_init(enum Chain chain);

/*
 * blsct_addr: a null-terminated c-style string of length ENCODED_DPK_SIZE
 * ser_dpk: a 48-byte vk followed by a 48-byte sk
 */
bool blsct_decode_address(
    const char* blsct_addr,
    uint8_t ser_dpk[ENCODED_DPK_SIZE]
);

/*
 * ser_dpk: a 48-byte vk followed by a 48-byte sk
 * blsct_addr: a buffer of size at least ENCODED_DPK_SIZE + 1
 */
bool blsct_encode_address(
    const uint8_t ser_dpk[ENCODED_DPK_SIZE],
    char* blsct_addr,
    enum AddressEncoding encoding
);

/*
- range proof creation and verification
BuildRangeProof
VerifyRangeProof

- blsct signatures creation/verification
Sign
VerifySignature

- rangeproof amount/memo recovery
RecoverAmount
RecoverMemo

- transaction serialization/deserialization
SerializeTransaction
DeserializeTransaction
*/

#ifdef __cplusplus
} // extern "C"
#endif

#endif // NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H

