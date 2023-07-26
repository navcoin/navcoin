// Copyright (c) 2023 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef TXFACTORY_H
#define TXFACTORY_H

#include <blsct/arith/elements.h>
#include <blsct/range_proof/range_proof_logic.h>
#include <blsct/wallet/keyman.h>

using T = Mcl;
using Point = T::Point;
using Points = Elements<Point>;
using Scalar = T::Scalar;
using Scalars = Elements<Scalar>;

namespace blsct {
struct UnsignedOutput {
    CTxOut out;
    Scalar blindingKey;
    Scalar gamma;

    void GenerateKeys(Scalar blindingKey, DoublePublicKey destKeys);
};

struct UnsignedInput {
    CTxIn in;
    Scalar gamma;
};

class TxFactory
{
private:
    KeyMan* km;
    CMutableTransaction tx;
    Scalar gammaAcc;
    std::vector<UnsignedOutput> vOutputs;
    std::vector<UnsignedInput> vInputs;
    CAmount nInputAmount;
    CAmount nOutputAmount;

public:
    TxFactory(KeyMan* km) : km(km){};

    static UnsignedOutput CreateOutput(const SubAddress& destination, const CAmount& nAmount, std::string sMemo, const TokenId& tokenId = TokenId());
    void AddOutput(const SubAddress& destination, const CAmount& nAmount, std::string sMemo, const TokenId& tokenId = TokenId());
    bool AddInput(const CCoinsViewCache& cache, const COutPoint& outpoint);
};
} // namespace blsct

#endif // TXFACTORY_H