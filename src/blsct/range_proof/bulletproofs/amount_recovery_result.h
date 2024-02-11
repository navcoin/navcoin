// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef NAVCOIN_BLSCT_ARITH_RANGE_PROOF_BULLETPROOFS_AMOUNT_RECOVERY_RESULT_H
#define NAVCOIN_BLSCT_ARITH_RANGE_PROOF_BULLETPROOFS_AMOUNT_RECOVERY_RESULT_H

#include <vector>

#include <blsct/range_proof/recovered_data.h>
#include <consensus/amount.h>

namespace bulletproofs {

template <typename T>
struct AmountRecoveryResult
{
    // indicates that all the recovery procedure was
    // successuflly completed. it, however, can be the case
    // that all recoveries have failed
    bool run_to_completion;

    // holds successfully recovered amount and the associated
    // message only excluding results w/ unrecoverted amount
    std::vector<range_proof::RecoveredData<T>> amounts;

    // convinience function to build unsuccessful result
    static AmountRecoveryResult<T> failed();
};

} // namespace bulletproofs

#endif // NAVCOIN_BLSCT_ARITH_RANGE_PROOF_BULLETPROOFS_AMOUNT_RECOVERY_RESULT_H

