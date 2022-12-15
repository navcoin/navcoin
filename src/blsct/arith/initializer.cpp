// Copyright (c) 2022 The Navcoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include <blsct/arith/initializer.h>

template <typename T>
void Initializer<T>::Init()
{
    T::Init();
}
