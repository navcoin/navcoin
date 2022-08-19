BEGIN {
D["PACKAGE_NAME"]=" \"Navcoin Core\""
D["PACKAGE_TARNAME"]=" \"navcoin\""
D["PACKAGE_VERSION"]=" \"23.99.0\""
D["PACKAGE_STRING"]=" \"Navcoin Core 23.99.0\""
D["PACKAGE_BUGREPORT"]=" \"https://github.com/navcoin/navcoin/issues\""
D["PACKAGE_URL"]=" \"https://navcoin.org/\""
D["HAVE_CXX17"]=" 1"
D["STDC_HEADERS"]=" 1"
D["HAVE_SYS_TYPES_H"]=" 1"
D["HAVE_SYS_STAT_H"]=" 1"
D["HAVE_STDLIB_H"]=" 1"
D["HAVE_STRING_H"]=" 1"
D["HAVE_MEMORY_H"]=" 1"
D["HAVE_STRINGS_H"]=" 1"
D["HAVE_INTTYPES_H"]=" 1"
D["HAVE_STDINT_H"]=" 1"
D["HAVE_UNISTD_H"]=" 1"
D["HAVE_DLFCN_H"]=" 1"
D["LT_OBJDIR"]=" \".libs/\""
D["USE_ASM"]=" 1"
D["HAVE_CLMUL"]=" 1"
D["ENABLE_SSE41"]=" 1"
D["ENABLE_AVX2"]=" 1"
D["ENABLE_X86_SHANI"]=" 1"
D["HAVE_PTHREAD_PRIO_INHERIT"]=" 1"
D["HAVE_PTHREAD"]=" 1"
D["HAVE_DECL_STRERROR_R"]=" 1"
D["HAVE_STRERROR_R"]=" 1"
D["STRERROR_R_CHAR_P"]=" 1"
D["HAVE_ENDIAN_H"]=" 1"
D["HAVE_BYTESWAP_H"]=" 1"
D["HAVE_STDIO_H"]=" 1"
D["HAVE_STDLIB_H"]=" 1"
D["HAVE_UNISTD_H"]=" 1"
D["HAVE_STRINGS_H"]=" 1"
D["HAVE_SYS_TYPES_H"]=" 1"
D["HAVE_SYS_STAT_H"]=" 1"
D["HAVE_SYS_SELECT_H"]=" 1"
D["HAVE_SYS_PRCTL_H"]=" 1"
D["HAVE_SYS_SYSCTL_H"]=" 1"
D["HAVE_DECL_GETIFADDRS"]=" 1"
D["HAVE_DECL_FREEIFADDRS"]=" 1"
D["HAVE_DECL_FORK"]=" 1"
D["HAVE_DECL_SETSID"]=" 1"
D["HAVE_DECL_PIPE2"]=" 1"
D["HAVE_DECL_LE16TOH"]=" 1"
D["HAVE_DECL_LE32TOH"]=" 1"
D["HAVE_DECL_LE64TOH"]=" 1"
D["HAVE_DECL_HTOLE16"]=" 1"
D["HAVE_DECL_HTOLE32"]=" 1"
D["HAVE_DECL_HTOLE64"]=" 1"
D["HAVE_DECL_BE16TOH"]=" 1"
D["HAVE_DECL_BE32TOH"]=" 1"
D["HAVE_DECL_BE64TOH"]=" 1"
D["HAVE_DECL_HTOBE16"]=" 1"
D["HAVE_DECL_HTOBE32"]=" 1"
D["HAVE_DECL_HTOBE64"]=" 1"
D["HAVE_DECL_BSWAP_16"]=" 1"
D["HAVE_DECL_BSWAP_32"]=" 1"
D["HAVE_DECL_BSWAP_64"]=" 1"
D["HAVE_BUILTIN_CLZL"]=" 1"
D["HAVE_BUILTIN_CLZLL"]=" 1"
D["HAVE_MALLOC_INFO"]=" 1"
D["HAVE_MALLOPT_ARENA_MAX"]=" 1"
D["HAVE_POSIX_FALLOCATE"]=" 1"
D["HAVE_DEFAULT_VISIBILITY_ATTRIBUTE"]=" 1"
D["HAVE_THREAD_LOCAL"]=" 1"
D["HAVE_GMTIME_R"]=" 1"
D["HAVE_SYS_GETRANDOM"]=" 1"
D["HAVE_GETENTROPY_RAND"]=" 1"
D["HAVE_FDATASYNC"]=" 1"
D["HAVE_O_CLOEXEC"]=" 1"
D["HAVE_STRONG_GETAUXVAL"]=" 1"
D["HAVE_SYSTEM"]=" 1"
D["HAVE_BUILTIN_MUL_OVERFLOW"]=" 1"
D["HAVE_BOOST"]=" /**/"
D["ENABLE_EXTERNAL_SIGNER"]=" 1"
D["USE_SYSCALL_SANDBOX"]=" 1"
D["ENABLE_ZMQ"]=" 0"
D["HAVE_CONSENSUS_LIB"]=" 1"
D["CLIENT_VERSION_MAJOR"]=" 23"
D["CLIENT_VERSION_MINOR"]=" 99"
D["CLIENT_VERSION_BUILD"]=" 0"
D["CLIENT_VERSION_IS_RELEASE"]=" false"
D["COPYRIGHT_YEAR"]=" 2022"
D["COPYRIGHT_HOLDERS"]=" \"The %s developers\""
D["COPYRIGHT_HOLDERS_SUBSTITUTION"]=" \"Bitcoin Core\""
D["COPYRIGHT_HOLDERS_FINAL"]=" \"The Bitcoin Core developers\""
  for (key in D) D_is_set[key] = 1
  FS = ""
}
/^[\t ]*#[\t ]*(define|undef)[\t ]+[_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ][_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]*([\t (]|$)/ {
  line = $ 0
  split(line, arg, " ")
  if (arg[1] == "#") {
    defundef = arg[2]
    mac1 = arg[3]
  } else {
    defundef = substr(arg[1], 2)
    mac1 = arg[2]
  }
  split(mac1, mac2, "(") #)
  macro = mac2[1]
  prefix = substr(line, 1, index(line, defundef) - 1)
  if (D_is_set[macro]) {
    # Preserve the white space surrounding the "#".
    print prefix "define", macro P[macro] D[macro]
    next
  } else {
    # Replace #undef with comments.  This is necessary, for example,
    # in the case of _POSIX_SOURCE, which is predefined and required
    # on some systems where configure will not decide to define it.
    if (defundef == "undef") {
      print "/*", prefix defundef, macro, "*/"
      next
    }
  }
}
{ print }
