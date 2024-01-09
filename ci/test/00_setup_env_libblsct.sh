#!/usr/bin/env bash
#
# Copyright (c) 2024 The Navcoin developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C.UTF-8

export HOST=ci_libblsct
export CONTAINER_NAME=ci_libblsct
export CI_IMAGE_NAME_TAG="ubuntu:jammy"
export PACKAGES="clang-16 libclang-16-dev llvm-16-dev libomp-16-dev clang-tidy-16 bear cmake libevent-dev libboost-dev libminiupnpc-dev libnatpmp-dev libzmq3-dev systemtap-sdt-dev libsqlite3-dev libdb++-dev"

export LIBBLSCT_ONLY=1

export QEMU_USER_CMD=
export USE_VALGRIND=
unset QEMU_USER_CMD
unset USE_VALGRIND
export RUN_UNIT_TESTS=false
export RUN_UNIT_TESTS_SEQUENTIAL=false
export RUN_FUNCTIONAL_TESTS=false
export RUN_TIDY=false
export RUN_SECURITY_TESTS=false
export RUN_FUZZ_TESTS=false
