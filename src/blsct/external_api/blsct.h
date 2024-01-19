#include "key_io.h"
#include <stdint.h>
#include <blsct/double_public_key.h>
#include <blsct/public_key.h>

#define PUBLIC_KEY_SIZE 48
#define DOUBLE_PUBLIC_KEY_SIZE 96

// API designed for JavaScript, Python, C, Rust, and Golang
// with primary focus on JavaScript, Python, and C

extern "C" {

enum Chain {
    MainNet,
    TestNet
};

struct DoublePublicKey {
    uint8_t vk[PUBLIC_KEY_SIZE];
    uint8_t sk[PUBLIC_KEY_SIZE];
};

bool blsct_init(Chain chain);

// blsct_addr is expected to be a null-terminated c-style
// string of size DOUBLE_PUBKEY_ENC_SIZE
bool decode_blsct_address(
    const char* blsct_addr,
    uint8_t dpk[DOUBLE_PUBLIC_KEY_SIZE]
);

// blsct_addr is expected to be a null-terminated c-style
// string of size DOUBLE_PUBKEY_ENC_SIZE
bool encode_blsct_address(
    const uint8_t dpk[DOUBLE_PUBKEY_ENC_SIZE],
    const char* blsct_addr
);

// address encoding/decoding
// void EncodeBlsctAddress();
// void DecodeBlsctAddress();
//
// // range proof creation and verification
// void BuildRangeProof();
// void VerifyRangeProof();
//
// // blsct signatures creation/verification
// void Sign();
// void VerifySignature();
//
// // rangeproof amount/memo recovery
// void RecoverAmount();
// void RecoverMemo()
//
// // transaction serialization/deserialization
// void SerializeTransaction();
// void DeserializeTransaction();

} // extern "C"
