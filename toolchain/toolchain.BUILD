package(default_visibility = ['//visibility:public'])

load("//:toolchain.bzl", "cc_toolchain_config")
cc_toolchain_config(name = "gcc_8_aarch64_toolchain_config",
                    tool_paths = "@gnu_gcc_8_aarch64//:compiler_components",
)
cc_toolchain_config(name = "gcc_9_aarch64_toolchain_config",
                    tool_paths = "@gnu_gcc_9_aarch64//:compiler_components",
)

cc_toolchain(
    name = "gcc-8-aarch64-gnu",
    toolchain_config = ":gcc_8_aarch64_toolchain_config",
    all_files = "@gnu_gcc_8_aarch64//:all",
    ar_files = "@gnu_gcc_8_aarch64//:all",
    as_files = "@gnu_gcc_8_aarch64//:all",
    compiler_files = "@gnu_gcc_8_aarch64//:all",
    dwp_files = "@gnu_gcc_8_aarch64//:all",
    linker_files = "@gnu_gcc_8_aarch64//:all",
    objcopy_files = "@gnu_gcc_8_aarch64//:all",
    strip_files = "@gnu_gcc_8_aarch64//:all",
    supports_param_files = 0,
)

cc_toolchain(
    name = "gcc-9-aarch64-gnu",
    toolchain_config = ":gcc_9_aarch64_toolchain_config",
    all_files = "@gnu_gcc_9_aarch64//:all",
    ar_files = "@gnu_gcc_9_aarch64//:all",
    as_files = "@gnu_gcc_9_aarch64//:all",
    compiler_files = "@gnu_gcc_9_aarch64//:all",
    dwp_files = "@gnu_gcc_9_aarch64//:all",
    linker_files = "@gnu_gcc_9_aarch64//:all",
    objcopy_files = "@gnu_gcc_9_aarch64//:all",
    strip_files = "@gnu_gcc_9_aarch64//:all",
    supports_param_files = 0,
)