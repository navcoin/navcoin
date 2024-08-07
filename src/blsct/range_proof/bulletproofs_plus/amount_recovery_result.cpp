// Copyright (c) 2022 The Navio developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/mcl/mcl.h>
#include <blsct/range_proof/bulletproofs_plus/amount_recovery_result.h>

namespace bulletproofs_plus {

template <typename T>
AmountRecoveryResult<T> AmountRecoveryResult<T>::failure()
{
    return {
        false,
        std::vector<range_proof::RecoveredData<T>>()
    };
}
template AmountRecoveryResult<Mcl> AmountRecoveryResult<Mcl>::failure();

} // namespace bulletproofs_plus
