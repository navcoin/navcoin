// Copyright (c) 2024 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H
#define NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#define PUBLIC_KEY_SIZE 48
#define DOUBLE_PUBLIC_KEY_SIZE 96
#define ENCODED_DPK_SIZE 165
#define SCALAR_SIZE 32
#define POINT_SIZE 48
#define PROOF_SIZE 1019
#define TOKEN_ID_SIZE 40  // uint256 + uint64_t = 32 + 8 = 40

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

typedef uint8_t BlsctScalar[SCALAR_SIZE];
typedef uint8_t BlsctPoint[POINT_SIZE];
typedef uint8_t BlsctRangeProof[PROOF_SIZE];
typedef uint8_t BlsctTokenId[32 + 8]; // uint256 + uint64_t

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

void blsct_build_range_proof(
    const BlsctScalar blsct_vs[],
    const size_t num_blsct_vs,
    const BlsctPoint* blsct_nonce,
    const uint8_t* blsct_message,
    const size_t blsct_message_size,
    const BlsctTokenId* blsct_token_id,
    BlsctRangeProof* blsct_proof
);

bool blsct_verify_range_proof(
    const BlsctRangeProof* const* blsct_proofs,
    const size_t num_blsct_proofs
);

/*
- blsct signatures creation/verification
blsct_sign
blsct_verify_signature

- rangeproof amount/memo recovery
blsct_recover_amount
blsct_recover_memo

- transaction serialization/deserialization
blsct_serialize_transaction
blsct_deserialize_transaction
*/

#ifdef __cplusplus
} // extern "C"
#endif

#endif // NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H

