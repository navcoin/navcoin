// Copyright (c) 2024 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H
#define NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H

#include "blsct/range_proof/setup.h"
#include <cstdint>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

/* constants */
#define PUBLIC_KEY_SIZE 48
#define DOUBLE_PUBLIC_KEY_SIZE 96
#define ENCODED_DPK_SIZE 165
#define SCALAR_SIZE 32
#define POINT_SIZE 48
#define PROOF_SIZE 1019
#define TOKEN_ID_SIZE 40  // uint256 + uint64_t = 32 + 8 = 40
#define UINT256_SIZE 32

/* return codes */
#define BLSCT_SUCCESS 0
#define BLSCT_EXCEPTION 1
#define BLSCT_BAD_DPK_SIZE 2
#define BLSCT_UNKNOWN_ENCODING 3
#define BLSCT_VALUE_OUTSIDE_THE_RANGE 4
#define BLSCT_DID_NOT_RUN_TO_COMPLETION 5

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
typedef uint8_t BlsctTokenId[TOKEN_ID_SIZE];
typedef uint8_t BlsctUint256[UINT256_SIZE];

enum AddressEncoding {
    Bech32,
    Bech32M
};

bool blsct_init(enum Chain chain);

/*
 * blsct_addr: a null-terminated c-style string of length ENCODED_DPK_SIZE
 * ser_dpk: a 48-byte vk followed by a 48-byte sk
 */
uint8_t blsct_decode_address(
    const char* blsct_addr,
    uint8_t ser_dpk[ENCODED_DPK_SIZE]
);

/*
 * ser_dpk: a 48-byte vk followed by a 48-byte sk
 * blsct_addr: a buffer of size at least ENCODED_DPK_SIZE + 1
 */
uint8_t blsct_encode_address(
    const uint8_t ser_dpk[ENCODED_DPK_SIZE],
    char* blsct_addr,
    enum AddressEncoding encoding
);

uint8_t blsct_build_range_proof(
    const uint64_t uint64_vs[],
    const size_t num_uint64_vs,
    const BlsctPoint* blsct_nonce,
    const char* blsct_message,
    const size_t blsct_message_size,
    const BlsctTokenId* blsct_token_id,
    BlsctRangeProof* blsct_range_proof
);

uint8_t blsct_verify_range_proof(
    const BlsctRangeProof blsct_range_proofs[],
    const size_t num_blsct_range_proofs,
    bool* is_valid
);

void blsct_generate_nonce(
    const uint8_t seed[],
    const size_t seed_len,
    BlsctPoint* blsct_nonce
);

void blsct_uint64_to_blsct_uint256(
    const uint64_t n,
    BlsctUint256 uint256
);

void blsct_generate_token_id(
    const BlsctUint256 token,
    BlsctTokenId blsct_token_id,
    const uint64_t subid = UINT64_MAX
);

/* holds both request (in) and result (out) */
typedef struct {
    BlsctRangeProof range_proof; /* in */
    BlsctPoint nonce; /* in */
    bool is_succ; /* out */
    uint64_t amount;  /* out */
    char msg[range_proof::Setup::max_message_size]; /* out */
    size_t msg_size; /* out */
} BlsctAmountRecoveryRequest;

/* returns false if exception is thrown. otherwise returns true */
uint8_t blsct_recover_amount(
    BlsctAmountRecoveryRequest blsct_amount_recovery_reqs[],
    const size_t num_reqs
);

/*
- blsct signatures creation/verification
blsct_sign
blsct_verify_signature

- transaction serialization/deserialization
blsct_serialize_transaction
blsct_deserialize_transaction
*/

#ifdef __cplusplus
} // extern "C"
#endif

#endif // NAVCOIN_BLSCT_EXTERNAL_API_BLSCT_H

