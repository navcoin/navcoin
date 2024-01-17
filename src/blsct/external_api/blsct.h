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

enum AddressEncoding {
    Bech32,
    Bech32M
};

bool blsct_init(Chain chain);

// blsct_addr: a null-terminated c-style string of length DOUBLE_PUBKEY_ENC_SIZE
// ser_dpk: 48-byte vk followed by 48-byte sk
bool blsct_decode_address(
    const char* blsct_addr,
    uint8_t ser_dpk[blsct::DoublePublicKey::SIZE]
);

// ser_dpk: a 48-byte vk followed by 48-byte sk
// blsct_addr: buffer of size at least DOUBLE_PUBKEY_ENC_SIZE + 1
bool blsct_encode_address(
    const uint8_t ser_dpk[blsct::DoublePublicKey::SIZE],
    char* blsct_addr,
    AddressEncoding encoding
);

// - range proof creation and verification
// BuildRangeProof
// VerifyRangeProof
//
// - blsct signatures creation/verification
// Sign
// VerifySignature
//
// - rangeproof amount/memo recovery
// RecoverAmount
// RecoverMemo
//
// - transaction serialization/deserialization
// SerializeTransaction
// DeserializeTransaction

} // extern "C"
