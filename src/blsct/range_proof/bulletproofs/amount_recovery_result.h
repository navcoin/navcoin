// Copyright (c) 2022 The Navio developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVIO_BLSCT_ARITH_RANGE_PROOF_BULLETPROOFS_AMOUNT_RECOVERY_RESULT_H
#define NAVIO_BLSCT_ARITH_RANGE_PROOF_BULLETPROOFS_AMOUNT_RECOVERY_RESULT_H

#include <vector>

#include <blsct/range_proof/recovered_data.h>
#include <consensus/amount.h>

namespace bulletproofs {

template <typename T>
struct AmountRecoveryResult
{
    bool is_completed; // does not mean recovery success
    std::vector<range_proof::RecoveredData<T>> amounts;

    static AmountRecoveryResult<T> failure();
};

} // namespace bulletproofs

#endif // NAVIO_BLSCT_ARITH_RANGE_PROOF_BULLETPROOFS_AMOUNT_RECOVERY_RESULT_H

