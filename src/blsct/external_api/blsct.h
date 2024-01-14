#include <stdint.h>
#include <blsct/double_public_key.h>
#include <blsct/public_key.h>

#define PUBLIC_KEY_SIZE 48
#define DOUBLE_PUBLIC_KEY_SIZE 96

extern "C" {

enum Chain {
    MainNet,
    TestNet
};

struct DoublePublicKey {
    uint8_t a[blsct::PublicKey::SIZE];
    uint8_t b[blsct::PublicKey::SIZE];
};

bool blsct_init(Chain chain);

bool decode_blsct_address(
    const char* blsct_address,
    uint8_t out[blsct::DoublePublicKey::SIZE]
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
