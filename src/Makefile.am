# Copyright (c) 2013-2016 The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

# Pattern rule to print variables, e.g. make print-top_srcdir
print-%: FORCE
	@echo '$*'='$($*)'

DIST_SUBDIRS = secp256k1 bls

AM_LDFLAGS = $(LIBTOOL_LDFLAGS) $(HARDENED_LDFLAGS) $(GPROF_LDFLAGS) $(SANITIZER_LDFLAGS) $(LTO_LDFLAGS) $(CORE_LDFLAGS)
AM_CXXFLAGS = $(DEBUG_CXXFLAGS) $(HARDENED_CXXFLAGS) $(WARN_CXXFLAGS) $(NOWARN_CXXFLAGS) $(ERROR_CXXFLAGS) $(GPROF_CXXFLAGS) $(SANITIZER_CXXFLAGS) $(LTO_CXXFLAGS) $(CORE_CXXFLAGS)
AM_CPPFLAGS = $(DEBUG_CPPFLAGS) $(HARDENED_CPPFLAGS) $(CORE_CPPFLAGS)
AM_LIBTOOLFLAGS = --preserve-dup-deps
PTHREAD_FLAGS = $(PTHREAD_CFLAGS) $(PTHREAD_LIBS)
EXTRA_LIBRARIES =

NAVCOIN_INCLUDES=-I$(builddir) -I$(srcdir)/$(MINISKETCH_INCLUDE_DIR_INT) -I$(srcdir)/secp256k1/include -I$(srcdir)/bls/include -I$(srcdir)/bls/mcl/include -I$(srcdir)/bls/mcl/src -I$(srcdir)/$(UNIVALUE_INCLUDE_DIR_INT) $(BDB_CPPFLAGS) $(BOOST_CPPFLAGS) $(LEVELDB_CPPFLAGS)

LIBNAVCOIN_NODE=libnavcoin_node.a
LIBNAVCOIN_COMMON=libnavcoin_common.a
LIBNAVCOIN_CONSENSUS=libnavcoin_consensus.a
LIBNAVCOIN_CLI=libnavcoin_cli.a
LIBNAVCOIN_UTIL=libnavcoin_util.a
LIBNAVCOIN_CRYPTO_BASE=crypto/libnavcoin_crypto_base.a
LIBNAVCOINQT=qt/libnavcoinqt.a
LIBSECP256K1=secp256k1/libsecp256k1.la
LIBMCL=bls/mcl/lib/libmcl.a
LIBBLS=bls/lib/libbls384_256.a

if ENABLE_ZMQ
LIBNAVCOIN_ZMQ=libnavcoin_zmq.a
endif
if BUILD_NAVCOIN_LIBS
LIBNAVCOINCONSENSUS=libnavcoinconsensus.la
endif
if ENABLE_WALLET
LIBNAVCOIN_WALLET=libnavcoin_wallet.a
LIBNAVCOIN_WALLET_TOOL=libnavcoin_wallet_tool.a
endif

LIBNAVCOIN_CRYPTO= $(LIBNAVCOIN_CRYPTO_BASE)
if ENABLE_SSE41
LIBNAVCOIN_CRYPTO_SSE41 = crypto/libnavcoin_crypto_sse41.a
LIBNAVCOIN_CRYPTO += $(LIBNAVCOIN_CRYPTO_SSE41)
endif
if ENABLE_AVX2
LIBNAVCOIN_CRYPTO_AVX2 = crypto/libnavcoin_crypto_avx2.a
LIBNAVCOIN_CRYPTO += $(LIBNAVCOIN_CRYPTO_AVX2)
endif
if ENABLE_X86_SHANI
LIBNAVCOIN_CRYPTO_X86_SHANI = crypto/libnavcoin_crypto_x86_shani.a
LIBNAVCOIN_CRYPTO += $(LIBNAVCOIN_CRYPTO_X86_SHANI)
endif
if ENABLE_ARM_SHANI
LIBNAVCOIN_CRYPTO_ARM_SHANI = crypto/libnavcoin_crypto_arm_shani.a
LIBNAVCOIN_CRYPTO += $(LIBNAVCOIN_CRYPTO_ARM_SHANI)
endif

$(LIBSECP256K1): $(wildcard secp256k1/src/*.h) $(wildcard secp256k1/src/*.c) $(wildcard secp256k1/include/*)
	$(AM_V_at)$(MAKE) $(AM_MAKEFLAGS) -C $(@D) $(@F)

$(LIBBLS):
	$(AM_V_at)$(MAKE) $(AM_MAKEFLAGS) -C bls lib/libbls384_256.a

$(LIBMCL):
	$(AM_V_at)$(MAKE) $(AM_MAKEFLAGS) -C bls/mcl lib/libmcl.a

# Make is not made aware of per-object dependencies to avoid limiting building parallelization
# But to build the less dependent modules first, we manually select their order here:
EXTRA_LIBRARIES += \
  $(LIBNAVCOIN_CRYPTO) \
  $(LIBNAVCOIN_UTIL) \
  $(LIBNAVCOIN_COMMON) \
  $(LIBNAVCOIN_CONSENSUS) \
  $(LIBNAVCOIN_NODE) \
  $(LIBNAVCOIN_CLI) \
  $(LIBNAVCOIN_IPC) \
  $(LIBNAVCOIN_WALLET) \
  $(LIBNAVCOIN_WALLET_TOOL) \
  $(LIBNAVCOIN_ZMQ)

lib_LTLIBRARIES = $(LIBNAVCOINCONSENSUS)
noinst_LTLIBRARIES =

bin_PROGRAMS =
noinst_PROGRAMS =
TESTS =
BENCHMARKS =

if BUILD_NAVCOIND
  bin_PROGRAMS += navcoind
endif

if BUILD_NAVCOIN_NODE
  bin_PROGRAMS += navcoin-node
endif

if BUILD_NAVCOIN_CLI
  bin_PROGRAMS += navcoin-cli
endif

if BUILD_NAVCOIN_TX
  bin_PROGRAMS += navcoin-tx
endif

if ENABLE_WALLET
if BUILD_NAVCOIN_WALLET
  bin_PROGRAMS += navcoin-wallet
endif
endif

if BUILD_NAVCOIN_UTIL
  bin_PROGRAMS += navcoin-util
endif

if BUILD_NAVCOIN_CHAINSTATE
  bin_PROGRAMS += navcoin-chainstate
endif

.PHONY: FORCE check-symbols check-security
# navcoin core #
NAVCOIN_CORE_H = \
  addrdb.h \
  addrman.h \
  addrman_impl.h \
  attributes.h \
  banman.h \
  base58.h \
  bech32.h \
  blockencodings.h \
  blockfilter.h \
  chain.h \
  chainparams.h \
  chainparamsbase.h \
  chainparamsseeds.h \
  checkqueue.h \
  clientversion.h \
  coins.h \
  common/bloom.h \
  compat.h \
  compat/assumptions.h \
  compat/byteswap.h \
  compat/cpuid.h \
  compat/endian.h \
  compat/sanity.h \
  compressor.h \
  consensus/consensus.h \
  consensus/tx_check.h \
  consensus/tx_verify.h \
  core_io.h \
  core_memusage.h \
  cuckoocache.h \
  dbwrapper.h \
  deploymentinfo.h \
  deploymentstatus.h \
  external_signer.h \
  flatfile.h \
  fs.h \
  httprpc.h \
  httpserver.h \
  i2p.h \
  index/base.h \
  index/blockfilterindex.h \
  index/coinstatsindex.h \
  index/disktxpos.h \
  index/txindex.h \
  indirectmap.h \
  init.h \
  init/common.h \
  interfaces/chain.h \
  interfaces/echo.h \
  interfaces/handler.h \
  interfaces/init.h \
  interfaces/ipc.h \
  interfaces/node.h \
  interfaces/wallet.h \
  key.h \
  key_io.h \
  logging.h \
  logging/timer.h \
  mapport.h \
  memusage.h \
  merkleblock.h \
  net.h \
  net_permissions.h \
  net_processing.h \
  net_types.h \
  netaddress.h \
  netbase.h \
  netmessagemaker.h \
  node/blockstorage.h \
  node/caches.h \
  node/chainstate.h \
  node/coin.h \
  node/coinstats.h \
  node/context.h \
  node/miner.h \
  node/minisketchwrapper.h \
  node/psbt.h \
  node/transaction.h \
  node/ui_interface.h \
  node/utxo_snapshot.h \
  noui.h \
  outputtype.h \
  policy/feerate.h \
  policy/fees.h \
  policy/packages.h \
  policy/policy.h \
  policy/rbf.h \
  policy/settings.h \
  pow.h \
  protocol.h \
  psbt.h \
  random.h \
  randomenv.h \
  rest.h \
  reverse_iterator.h \
  rpc/blockchain.h \
  rpc/client.h \
  rpc/mempool.h \
  rpc/mining.h \
  rpc/protocol.h \
  rpc/rawtransaction_util.h \
  rpc/register.h \
  rpc/request.h \
  rpc/server.h \
  rpc/server_util.h \
  rpc/util.h \
  scheduler.h \
  script/descriptor.h \
  script/keyorigin.h \
  script/miniscript.h \
  script/sigcache.h \
  script/sign.h \
  script/signingprovider.h \
  script/standard.h \
  shutdown.h \
  signet.h \
  streams.h \
  support/allocators/secure.h \
  support/allocators/zeroafterfree.h \
  support/cleanse.h \
  support/events.h \
  support/lockedpool.h \
  sync.h \
  threadinterrupt.h \
  threadsafety.h \
  timedata.h \
  torcontrol.h \
  txdb.h \
  txmempool.h \
  txorphanage.h \
  txrequest.h \
  undo.h \
  util/asmap.h \
  util/bip32.h \
  util/bytevectorhash.h \
  util/check.h \
  util/epochguard.h \
  util/error.h \
  util/fastrange.h \
  util/fees.h \
  util/getuniquepath.h \
  util/golombrice.h \
  util/hash_type.h \
  util/hasher.h \
  util/macros.h \
  util/message.h \
  util/moneystr.h \
  util/overflow.h \
  util/overloaded.h \
  util/rbf.h \
  util/readwritefile.h \
  util/serfloat.h \
  util/settings.h \
  util/sock.h \
  util/spanparsing.h \
  util/string.h \
  util/syscall_sandbox.h \
  util/system.h \
  util/thread.h \
  util/threadnames.h \
  util/time.h \
  util/tokenpipe.h \
  util/trace.h \
  util/translation.h \
  util/types.h \
  util/ui_change_type.h \
  util/url.h \
  util/vector.h \
  validation.h \
  validationinterface.h \
  versionbits.h \
  wallet/bdb.h \
  wallet/coincontrol.h \
  wallet/coinselection.h \
  wallet/context.h \
  wallet/crypter.h \
  wallet/db.h \
  wallet/dump.h \
  wallet/external_signer_scriptpubkeyman.h \
  wallet/feebumper.h \
  wallet/fees.h \
  wallet/ismine.h \
  wallet/load.h \
  wallet/receive.h \
  wallet/rpc/util.h \
  wallet/rpc/wallet.h \
  wallet/salvage.h \
  wallet/scriptpubkeyman.h \
  wallet/spend.h \
  wallet/sqlite.h \
  wallet/transaction.h \
  wallet/wallet.h \
  wallet/walletdb.h \
  wallet/wallettool.h \
  wallet/walletutil.h \
  walletinitinterface.h \
  warnings.h \
  zmq/zmqabstractnotifier.h \
  zmq/zmqnotificationinterface.h \
  zmq/zmqpublishnotifier.h \
  zmq/zmqrpc.h \
  zmq/zmqutil.h


obj/build.h: FORCE
	@$(MKDIR_P) $(builddir)/obj
	@$(top_srcdir)/share/genbuild.sh "$(abs_top_builddir)/src/obj/build.h" \
	  "$(abs_top_srcdir)"
libnavcoin_util_a-clientversion.$(OBJEXT): obj/build.h

ipc/capnp/libnavcoin_ipc_a-ipc.$(OBJEXT): $(libnavcoin_ipc_mpgen_input:=.h)

# server: shared between navcoind and navcoin-qt
# Contains code accessing mempool and chain state that is meant to be separated
# from wallet and gui code (see node/README.md). Shared code should go in
# libnavcoin_common or libnavcoin_util libraries, instead.
libnavcoin_node_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES) $(MINIUPNPC_CPPFLAGS) $(NATPMP_CPPFLAGS) $(EVENT_CFLAGS) $(EVENT_PTHREADS_CFLAGS)
libnavcoin_node_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
libnavcoin_node_a_SOURCES = \
  addrdb.cpp \
  addrman.cpp \
  banman.cpp \
  blockencodings.cpp \
  blockfilter.cpp \
  chain.cpp \
  consensus/tx_verify.cpp \
  dbwrapper.cpp \
  deploymentstatus.cpp \
  flatfile.cpp \
  httprpc.cpp \
  httpserver.cpp \
  i2p.cpp \
  index/base.cpp \
  index/blockfilterindex.cpp \
  index/coinstatsindex.cpp \
  index/txindex.cpp \
  init.cpp \
  mapport.cpp \
  net.cpp \
  net_processing.cpp \
  node/blockstorage.cpp \
  node/caches.cpp \
  node/chainstate.cpp \
  node/coin.cpp \
  node/coinstats.cpp \
  node/context.cpp \
  node/interfaces.cpp \
  node/miner.cpp \
  node/minisketchwrapper.cpp \
  node/psbt.cpp \
  node/transaction.cpp \
  node/ui_interface.cpp \
  noui.cpp \
  policy/fees.cpp \
  policy/packages.cpp \
  policy/rbf.cpp \
  policy/settings.cpp \
  pow.cpp \
  rest.cpp \
  rpc/blockchain.cpp \
  rpc/mempool.cpp \
  rpc/mining.cpp \
  rpc/misc.cpp \
  rpc/net.cpp \
  rpc/rawtransaction.cpp \
  rpc/server.cpp \
  rpc/server_util.cpp \
  rpc/txoutproof.cpp \
  script/sigcache.cpp \
  shutdown.cpp \
  signet.cpp \
  timedata.cpp \
  torcontrol.cpp \
  txdb.cpp \
  txmempool.cpp \
  txorphanage.cpp \
  txrequest.cpp \
  validation.cpp \
  validationinterface.cpp \
  versionbits.cpp \
  $(NAVCOIN_CORE_H)

if ENABLE_WALLET
libnavcoin_node_a_SOURCES += wallet/init.cpp
endif
if !ENABLE_WALLET
libnavcoin_node_a_SOURCES += dummywallet.cpp
endif

if ENABLE_ZMQ
libnavcoin_zmq_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES) $(ZMQ_CFLAGS)
libnavcoin_zmq_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
libnavcoin_zmq_a_SOURCES = \
  zmq/zmqabstractnotifier.cpp \
  zmq/zmqnotificationinterface.cpp \
  zmq/zmqpublishnotifier.cpp \
  zmq/zmqrpc.cpp \
  zmq/zmqutil.cpp
endif


# wallet: shared between navcoind and navcoin-qt, but only linked
# when wallet enabled
libnavcoin_wallet_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES) $(SQLITE_CFLAGS)
libnavcoin_wallet_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
libnavcoin_wallet_a_SOURCES = \
  wallet/coincontrol.cpp \
  wallet/context.cpp \
  wallet/crypter.cpp \
  wallet/db.cpp \
  wallet/dump.cpp \
  wallet/external_signer_scriptpubkeyman.cpp \
  wallet/feebumper.cpp \
  wallet/fees.cpp \
  wallet/interfaces.cpp \
  wallet/load.cpp \
  wallet/receive.cpp \
  wallet/rpc/addresses.cpp \
  wallet/rpc/backup.cpp \
  wallet/rpc/coins.cpp \
  wallet/rpc/encrypt.cpp \
  wallet/rpc/spend.cpp \
  wallet/rpc/signmessage.cpp \
  wallet/rpc/transactions.cpp \
  wallet/rpc/util.cpp \
  wallet/rpc/wallet.cpp \
  wallet/scriptpubkeyman.cpp \
  wallet/spend.cpp \
  wallet/transaction.cpp \
  wallet/wallet.cpp \
  wallet/walletdb.cpp \
  wallet/walletutil.cpp \
  wallet/coinselection.cpp \
  $(NAVCOIN_CORE_H)

if USE_SQLITE
libnavcoin_wallet_a_SOURCES += wallet/sqlite.cpp
endif
if USE_BDB
libnavcoin_wallet_a_SOURCES += wallet/bdb.cpp wallet/salvage.cpp
endif

libnavcoin_wallet_tool_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
libnavcoin_wallet_tool_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
libnavcoin_wallet_tool_a_SOURCES = \
  wallet/wallettool.cpp \
  $(NAVCOIN_CORE_H)

# crypto primitives library
crypto_libnavcoin_crypto_base_a_CPPFLAGS = $(AM_CPPFLAGS)
crypto_libnavcoin_crypto_base_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
crypto_libnavcoin_crypto_base_a_SOURCES = \
  crypto/aes.cpp \
  crypto/aes.h \
  crypto/chacha_poly_aead.h \
  crypto/chacha_poly_aead.cpp \
  crypto/chacha20.h \
  crypto/chacha20.cpp \
  crypto/common.h \
  crypto/hkdf_sha256_32.cpp \
  crypto/hkdf_sha256_32.h \
  crypto/hmac_sha256.cpp \
  crypto/hmac_sha256.h \
  crypto/hmac_sha512.cpp \
  crypto/hmac_sha512.h \
  crypto/poly1305.h \
  crypto/poly1305.cpp \
  crypto/muhash.h \
  crypto/muhash.cpp \
  crypto/ripemd160.cpp \
  crypto/ripemd160.h \
  crypto/sha1.cpp \
  crypto/sha1.h \
  crypto/sha256.cpp \
  crypto/sha256.h \
  crypto/sha3.cpp \
  crypto/sha3.h \
  crypto/sha512.cpp \
  crypto/sha512.h \
  crypto/siphash.cpp \
  crypto/siphash.h

if USE_ASM
crypto_libnavcoin_crypto_base_a_SOURCES += crypto/sha256_sse4.cpp
endif

crypto_libnavcoin_crypto_sse41_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
crypto_libnavcoin_crypto_sse41_a_CPPFLAGS = $(AM_CPPFLAGS)
crypto_libnavcoin_crypto_sse41_a_CXXFLAGS += $(SSE41_CXXFLAGS)
crypto_libnavcoin_crypto_sse41_a_CPPFLAGS += -DENABLE_SSE41
crypto_libnavcoin_crypto_sse41_a_SOURCES = crypto/sha256_sse41.cpp

crypto_libnavcoin_crypto_avx2_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
crypto_libnavcoin_crypto_avx2_a_CPPFLAGS = $(AM_CPPFLAGS)
crypto_libnavcoin_crypto_avx2_a_CXXFLAGS += $(AVX2_CXXFLAGS)
crypto_libnavcoin_crypto_avx2_a_CPPFLAGS += -DENABLE_AVX2
crypto_libnavcoin_crypto_avx2_a_SOURCES = crypto/sha256_avx2.cpp

crypto_libnavcoin_crypto_x86_shani_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
crypto_libnavcoin_crypto_x86_shani_a_CPPFLAGS = $(AM_CPPFLAGS)
crypto_libnavcoin_crypto_x86_shani_a_CXXFLAGS += $(X86_SHANI_CXXFLAGS)
crypto_libnavcoin_crypto_x86_shani_a_CPPFLAGS += -DENABLE_X86_SHANI
crypto_libnavcoin_crypto_x86_shani_a_SOURCES = crypto/sha256_x86_shani.cpp

crypto_libnavcoin_crypto_arm_shani_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
crypto_libnavcoin_crypto_arm_shani_a_CPPFLAGS = $(AM_CPPFLAGS)
crypto_libnavcoin_crypto_arm_shani_a_CXXFLAGS += $(ARM_SHANI_CXXFLAGS)
crypto_libnavcoin_crypto_arm_shani_a_CPPFLAGS += -DENABLE_ARM_SHANI
crypto_libnavcoin_crypto_arm_shani_a_SOURCES = crypto/sha256_arm_shani.cpp

# consensus: shared between all executables that validate any consensus rules.
libnavcoin_consensus_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
libnavcoin_consensus_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
libnavcoin_consensus_a_SOURCES = \
  arith_uint256.cpp \
  arith_uint256.h \
  consensus/amount.h \
  consensus/merkle.cpp \
  consensus/merkle.h \
  consensus/params.h \
  consensus/tx_check.cpp \
  consensus/validation.h \
  hash.cpp \
  hash.h \
  prevector.h \
  primitives/block.cpp \
  primitives/block.h \
  primitives/transaction.cpp \
  primitives/transaction.h \
  pubkey.cpp \
  pubkey.h \
  script/navcoinconsensus.cpp \
  script/interpreter.cpp \
  script/interpreter.h \
  script/script.cpp \
  script/script.h \
  script/script_error.cpp \
  script/script_error.h \
  serialize.h \
  span.h \
  tinyformat.h \
  uint256.cpp \
  uint256.h \
  util/strencodings.cpp \
  util/strencodings.h \
  version.h

# common: shared between navcoind, and navcoin-qt and non-server tools
libnavcoin_common_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
libnavcoin_common_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
libnavcoin_common_a_SOURCES = \
  base58.cpp \
  bech32.cpp \
  chainparams.cpp \
  coins.cpp \
  common/bloom.cpp \
  compressor.cpp \
  core_read.cpp \
  core_write.cpp \
  deploymentinfo.cpp \
  external_signer.cpp \
  init/common.cpp \
  key.cpp \
  key_io.cpp \
  merkleblock.cpp \
  net_types.cpp \
  netaddress.cpp \
  netbase.cpp \
  net_permissions.cpp \
  outputtype.cpp \
  policy/feerate.cpp \
  policy/policy.cpp \
  protocol.cpp \
  psbt.cpp \
  rpc/rawtransaction_util.cpp \
  rpc/external_signer.cpp \
  rpc/util.cpp \
  scheduler.cpp \
  script/descriptor.cpp \
  script/miniscript.cpp \
  script/sign.cpp \
  script/signingprovider.cpp \
  script/standard.cpp \
  warnings.cpp \
  $(NAVCOIN_CORE_H)

# util: shared between all executables.
# This library *must* be included to make sure that the glibc
# sanity checks are linked.
libnavcoin_util_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
libnavcoin_util_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
libnavcoin_util_a_SOURCES = \
  support/lockedpool.cpp \
  chainparamsbase.cpp \
  clientversion.cpp \
  compat/glibcxx_sanity.cpp \
  fs.cpp \
  interfaces/echo.cpp \
  interfaces/handler.cpp \
  interfaces/init.cpp \
  logging.cpp \
  random.cpp \
  randomenv.cpp \
  rpc/request.cpp \
  support/cleanse.cpp \
  sync.cpp \
  threadinterrupt.cpp \
  util/asmap.cpp \
  util/bip32.cpp \
  util/bytevectorhash.cpp \
  util/check.cpp \
  util/error.cpp \
  util/fees.cpp \
  util/getuniquepath.cpp \
  util/hasher.cpp \
  util/sock.cpp \
  util/system.cpp \
  util/message.cpp \
  util/moneystr.cpp \
  util/rbf.cpp \
  util/readwritefile.cpp \
  util/settings.cpp \
  util/thread.cpp \
  util/threadnames.cpp \
  util/serfloat.cpp \
  util/spanparsing.cpp \
  util/strencodings.cpp \
  util/string.cpp \
  util/syscall_sandbox.cpp \
  util/time.cpp \
  util/tokenpipe.cpp \
  $(NAVCOIN_CORE_H)

if USE_LIBEVENT
libnavcoin_util_a_SOURCES += util/url.cpp
endif

# cli: shared between navcoin-cli and navcoin-qt
libnavcoin_cli_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
libnavcoin_cli_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
libnavcoin_cli_a_SOURCES = \
  compat/stdin.h \
  compat/stdin.cpp \
  rpc/client.cpp \
  $(NAVCOIN_CORE_H)

nodist_libnavcoin_util_a_SOURCES = $(srcdir)/obj/build.h
#

# navcoind & navcoin-node binaries #
navcoin_daemon_sources = navcoind.cpp
navcoin_bin_cppflags = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
navcoin_bin_cxxflags = $(AM_CXXFLAGS) $(PIE_FLAGS)
navcoin_bin_ldflags = $(RELDFLAGS) $(AM_LDFLAGS) $(LIBTOOL_APP_LDFLAGS) $(PTHREAD_FLAGS)

if TARGET_WINDOWS
navcoin_daemon_sources += navcoind-res.rc
endif

navcoin_bin_ldadd = \
  $(LIBNAVCOIN_WALLET) \
  $(LIBNAVCOIN_COMMON) \
  $(LIBNAVCOIN_UTIL) \
  $(LIBUNIVALUE) \
  $(LIBNAVCOIN_ZMQ) \
  $(LIBNAVCOIN_CONSENSUS) \
  $(LIBNAVCOIN_CRYPTO) \
  $(LIBLEVELDB) \
  $(LIBLEVELDB_SSE42) \
  $(LIBMEMENV) \
  $(LIBBLS) \
  $(LIBMCL) \
  $(LIBSECP256K1)

navcoin_bin_ldadd += $(BDB_LIBS) $(MINIUPNPC_LIBS) $(NATPMP_LIBS) $(EVENT_PTHREADS_LIBS) $(EVENT_LIBS) $(ZMQ_LIBS) $(SQLITE_LIBS)

navcoind_SOURCES = $(navcoin_daemon_sources) init/navcoind.cpp
navcoind_CPPFLAGS = $(navcoin_bin_cppflags)
navcoind_CXXFLAGS = $(navcoin_bin_cxxflags)
navcoind_LDFLAGS = $(navcoin_bin_ldflags)
navcoind_LDADD = $(LIBNAVCOIN_NODE) $(navcoin_bin_ldadd)

navcoin_node_SOURCES = $(navcoin_daemon_sources) init/navcoin-node.cpp
navcoin_node_CPPFLAGS = $(navcoin_bin_cppflags)
navcoin_node_CXXFLAGS = $(navcoin_bin_cxxflags)
navcoin_node_LDFLAGS = $(navcoin_bin_ldflags)
navcoin_node_LDADD = $(LIBNAVCOIN_NODE) $(navcoin_bin_ldadd) $(LIBNAVCOIN_IPC) $(LIBMULTIPROCESS_LIBS)

# navcoin-cli binary #
navcoin_cli_SOURCES = navcoin-cli.cpp
navcoin_cli_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES) $(EVENT_CFLAGS)
navcoin_cli_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
navcoin_cli_LDFLAGS = $(RELDFLAGS) $(AM_LDFLAGS) $(LIBTOOL_APP_LDFLAGS) $(PTHREAD_FLAGS)

if TARGET_WINDOWS
navcoin_cli_SOURCES += navcoin-cli-res.rc
endif

navcoin_cli_LDADD = \
  $(LIBNAVCOIN_CLI) \
  $(LIBUNIVALUE) \
  $(LIBNAVCOIN_UTIL) \
  $(LIBNAVCOIN_CRYPTO)

navcoin_cli_LDADD += $(EVENT_LIBS)
#

# navcoin-tx binary #
navcoin_tx_SOURCES = navcoin-tx.cpp
navcoin_tx_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
navcoin_tx_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
navcoin_tx_LDFLAGS = $(RELDFLAGS) $(AM_LDFLAGS) $(LIBTOOL_APP_LDFLAGS) $(PTHREAD_FLAGS)

if TARGET_WINDOWS
navcoin_tx_SOURCES += navcoin-tx-res.rc
endif

navcoin_tx_LDADD = \
  $(LIBUNIVALUE) \
  $(LIBNAVCOIN_COMMON) \
  $(LIBNAVCOIN_UTIL) \
  $(LIBNAVCOIN_CONSENSUS) \
  $(LIBNAVCOIN_CRYPTO) \
  $(LIBBLS) \
  $(LIBMCL) \
  $(LIBSECP256K1)
#

# navcoin-wallet binary #
navcoin_wallet_SOURCES = navcoin-wallet.cpp
navcoin_wallet_SOURCES += init/navcoin-wallet.cpp
navcoin_wallet_CPPFLAGS = $(navcoin_bin_cppflags)
navcoin_wallet_CXXFLAGS = $(navcoin_bin_cxxflags)
navcoin_wallet_LDFLAGS = $(navcoin_bin_ldflags)
navcoin_wallet_LDADD = \
  $(LIBNAVCOIN_WALLET_TOOL) \
  $(LIBNAVCOIN_WALLET) \
  $(LIBNAVCOIN_COMMON) \
  $(LIBNAVCOIN_UTIL) \
  $(LIBUNIVALUE) \
  $(LIBNAVCOIN_CONSENSUS) \
  $(LIBNAVCOIN_CRYPTO) \
  $(LIBBLS) \
  $(LIBMCL) \
  $(LIBSECP256K1) \
  $(BDB_LIBS) \
  $(SQLITE_LIBS)

if TARGET_WINDOWS
navcoin_wallet_SOURCES += navcoin-wallet-res.rc
endif
#

# navcoin-util binary #
navcoin_util_SOURCES = navcoin-util.cpp
navcoin_util_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
navcoin_util_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
navcoin_util_LDFLAGS = $(RELDFLAGS) $(AM_LDFLAGS) $(LIBTOOL_APP_LDFLAGS) $(PTHREAD_FLAGS)

if TARGET_WINDOWS
navcoin_util_SOURCES += navcoin-util-res.rc
endif

navcoin_util_LDADD = \
  $(LIBNAVCOIN_COMMON) \
  $(LIBNAVCOIN_UTIL) \
  $(LIBUNIVALUE) \
  $(LIBNAVCOIN_CONSENSUS) \
  $(LIBNAVCOIN_CRYPTO) \
  $(LIBBLS) \
  $(LIBMCL) \
  $(LIBSECP256K1)
#

# navcoin-chainstate binary #
navcoin_chainstate_SOURCES = \
  navcoin-chainstate.cpp \
  arith_uint256.cpp \
  blockfilter.cpp \
  chain.cpp \
  chainparamsbase.cpp \
  chainparams.cpp \
  clientversion.cpp \
  coins.cpp \
  compat/glibcxx_sanity.cpp \
  compressor.cpp \
  consensus/merkle.cpp \
  consensus/tx_check.cpp \
  consensus/tx_verify.cpp \
  core_read.cpp \
  dbwrapper.cpp \
  deploymentinfo.cpp \
  deploymentstatus.cpp \
  flatfile.cpp \
  fs.cpp \
  hash.cpp \
  index/base.cpp \
  index/blockfilterindex.cpp \
  index/coinstatsindex.cpp \
  init/common.cpp \
  key.cpp \
  logging.cpp \
  netaddress.cpp \
  node/blockstorage.cpp \
  node/chainstate.cpp \
  node/coinstats.cpp \
  node/ui_interface.cpp \
  policy/feerate.cpp \
  policy/fees.cpp \
  policy/packages.cpp \
  policy/policy.cpp \
  policy/rbf.cpp \
  policy/settings.cpp \
  pow.cpp \
  primitives/block.cpp \
  primitives/transaction.cpp \
  pubkey.cpp \
  random.cpp \
  randomenv.cpp \
  scheduler.cpp \
  script/interpreter.cpp \
  script/script.cpp \
  script/script_error.cpp \
  script/sigcache.cpp \
  script/standard.cpp \
  shutdown.cpp \
  signet.cpp \
  support/cleanse.cpp \
  support/lockedpool.cpp \
  sync.cpp \
  threadinterrupt.cpp \
  timedata.cpp \
  txdb.cpp \
  txmempool.cpp \
  uint256.cpp \
  util/asmap.cpp \
  util/bytevectorhash.cpp \
  util/check.cpp \
  util/getuniquepath.cpp \
  util/hasher.cpp \
  util/moneystr.cpp \
  util/rbf.cpp \
  util/serfloat.cpp \
  util/settings.cpp \
  util/strencodings.cpp \
  util/syscall_sandbox.cpp \
  util/system.cpp \
  util/thread.cpp \
  util/threadnames.cpp \
  util/time.cpp \
  util/tokenpipe.cpp \
  validation.cpp \
  validationinterface.cpp \
  versionbits.cpp \
  warnings.cpp
navcoin_chainstate_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
navcoin_chainstate_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)
navcoin_chainstate_LDFLAGS = $(RELDFLAGS) $(AM_LDFLAGS) $(LIBTOOL_APP_LDFLAGS) $(PTHREAD_FLAGS)
navcoin_chainstate_LDADD = \
  $(LIBNAVCOIN_CRYPTO) \
  $(LIBUNIVALUE) \
  $(LIBBLS) \
  $(LIBMCL) \
  $(LIBSECP256K1) \
  $(LIBLEVELDB) \
  $(LIBLEVELDB_SSE42) \
  $(LIBMEMENV)

# Required for obj/build.h to be generated first.
# More details: https://www.gnu.org/software/automake/manual/html_node/Built-Sources-Example.html
navcoin_chainstate-clientversion.$(OBJEXT): obj/build.h
#

# navcoinconsensus library #
if BUILD_NAVCOIN_LIBS
include_HEADERS = script/navcoinconsensus.h
libnavcoinconsensus_la_SOURCES = support/cleanse.cpp $(crypto_libnavcoin_crypto_base_a_SOURCES) $(libnavcoin_consensus_a_SOURCES)

libnavcoinconsensus_la_LDFLAGS = $(AM_LDFLAGS) -no-undefined $(RELDFLAGS)
libnavcoinconsensus_la_LIBADD = \
  $(LIBBLS) \
  $(LIBMCL) \
  $(LIBSECP256K1)
libnavcoinconsensus_la_CPPFLAGS = $(AM_CPPFLAGS) -I$(builddir)/obj -I$(srcdir)/secp256k1/include -DBUILD_NAVCOIN_INTERNAL
libnavcoinconsensus_la_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS)

endif
#

CTAES_DIST =  crypto/ctaes/bench.c
CTAES_DIST += crypto/ctaes/ctaes.c
CTAES_DIST += crypto/ctaes/ctaes.h
CTAES_DIST += crypto/ctaes/README.md
CTAES_DIST += crypto/ctaes/test.c

CLEANFILES = $(EXTRA_LIBRARIES)

CLEANFILES += *.gcda *.gcno
CLEANFILES += compat/*.gcda compat/*.gcno
CLEANFILES += consensus/*.gcda consensus/*.gcno
CLEANFILES += crc32c/src/*.gcda crc32c/src/*.gcno
CLEANFILES += crypto/*.gcda crypto/*.gcno
CLEANFILES += index/*.gcda index/*.gcno
CLEANFILES += interfaces/*.gcda interfaces/*.gcno
CLEANFILES += node/*.gcda node/*.gcno
CLEANFILES += policy/*.gcda policy/*.gcno
CLEANFILES += primitives/*.gcda primitives/*.gcno
CLEANFILES += rpc/*.gcda rpc/*.gcno
CLEANFILES += script/*.gcda script/*.gcno
CLEANFILES += support/*.gcda support/*.gcno
CLEANFILES += univalue/*.gcda univalue/*.gcno
CLEANFILES += util/*.gcda util/*.gcno
CLEANFILES += wallet/*.gcda wallet/*.gcno
CLEANFILES += wallet/test/*.gcda wallet/test/*.gcno
CLEANFILES += zmq/*.gcda zmq/*.gcno
CLEANFILES += obj/build.h

EXTRA_DIST = $(CTAES_DIST)


config/navcoin-config.h: config/stamp-h1
	@$(MAKE) -C $(top_builddir) $(subdir)/$(@)
config/stamp-h1: $(top_srcdir)/$(subdir)/config/navcoin-config.h.in $(top_builddir)/config.status
	$(AM_V_at)$(MAKE) -C $(top_builddir) $(subdir)/$(@)
$(top_srcdir)/$(subdir)/config/navcoin-config.h.in:  $(am__configure_deps)
	$(AM_V_at)$(MAKE) -C $(top_srcdir) $(subdir)/config/navcoin-config.h.in

clean-local:
	-$(MAKE) -C secp256k1 clean
	-$(MAKE) -C bls clean
	-rm -f leveldb/*/*.gcda leveldb/*/*.gcno leveldb/helpers/memenv/*.gcda leveldb/helpers/memenv/*.gcno
	-rm -f config.h
	-rm -rf test/__pycache__

.rc.o:
	@test -f $(WINDRES)
	## FIXME: How to get the appropriate modulename_CPPFLAGS in here?
	$(AM_V_GEN) $(WINDRES) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(CPPFLAGS) -DWINDRES_PREPROC -i $< -o $@

check-symbols: $(bin_PROGRAMS)
	@echo "Running symbol and dynamic library checks..."
	$(AM_V_at) $(PYTHON) $(top_srcdir)/contrib/devtools/symbol-check.py $(bin_PROGRAMS)

check-security: $(bin_PROGRAMS)
if HARDEN
	@echo "Checking binary security..."
	$(AM_V_at) $(PYTHON) $(top_srcdir)/contrib/devtools/security-check.py $(bin_PROGRAMS)
endif

libnavcoin_ipc_mpgen_input = \
  ipc/capnp/echo.capnp \
  ipc/capnp/init.capnp
EXTRA_DIST += $(libnavcoin_ipc_mpgen_input)
%.capnp:

if BUILD_MULTIPROCESS
LIBNAVCOIN_IPC=libnavcoin_ipc.a
libnavcoin_ipc_a_SOURCES = \
  ipc/capnp/context.h \
  ipc/capnp/init-types.h \
  ipc/capnp/protocol.cpp \
  ipc/capnp/protocol.h \
  ipc/context.h \
  ipc/exception.h \
  ipc/interfaces.cpp \
  ipc/process.cpp \
  ipc/process.h \
  ipc/protocol.h
libnavcoin_ipc_a_CPPFLAGS = $(AM_CPPFLAGS) $(NAVCOIN_INCLUDES)
libnavcoin_ipc_a_CXXFLAGS = $(AM_CXXFLAGS) $(PIE_FLAGS) $(LIBMULTIPROCESS_CFLAGS)

include $(MPGEN_PREFIX)/include/mpgen.mk
libnavcoin_ipc_mpgen_output = \
  $(libnavcoin_ipc_mpgen_input:=.c++) \
  $(libnavcoin_ipc_mpgen_input:=.h) \
  $(libnavcoin_ipc_mpgen_input:=.proxy-client.c++) \
  $(libnavcoin_ipc_mpgen_input:=.proxy-server.c++) \
  $(libnavcoin_ipc_mpgen_input:=.proxy-types.c++) \
  $(libnavcoin_ipc_mpgen_input:=.proxy-types.h) \
  $(libnavcoin_ipc_mpgen_input:=.proxy.h)
nodist_libnavcoin_ipc_a_SOURCES = $(libnavcoin_ipc_mpgen_output)
CLEANFILES += $(libnavcoin_ipc_mpgen_output)
endif

include Makefile.minisketch.include

include Makefile.crc32c.include
include Makefile.leveldb.include

include Makefile.test_util.include
include Makefile.test_fuzz.include

if ENABLE_TESTS
include Makefile.test.include
endif

if ENABLE_BENCH
include Makefile.bench.include
endif

if ENABLE_QT
include Makefile.qt.include
endif

if ENABLE_QT_TESTS
include Makefile.qttest.include
endif

include Makefile.univalue.include
