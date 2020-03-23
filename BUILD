package(default_visibility = ['//visibility:public'])

filegroup(
    name = "all",
    srcs = [
        "@gnu_aarch64_gcc//:all",
    ],
)

load(":toolchain.bzl", "cc_toolchain_config")

cc_toolchain_config(name = "gcc_aarch64_toolchain_config",
                    tool_paths = "@gnu_aarch64_gcc//:compiler_components",
)

cc_toolchain(
    name = "gcc-aarch64-gnu",
    toolchain_config = ":gcc_aarch64_toolchain_config",
    all_files = ":all",
    ar_files = ":all",
    as_files = ":all",
    compiler_files = ":all",
    dwp_files = ":all",
    linker_files = ":all",
    objcopy_files = ":all",
    strip_files = ":all",
    supports_param_files = 0,
)

toolchain(
    name = "gcc_aarch64_xcompile_toolchain",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    target_compatible_with = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
    ],
    toolchain = ":gcc-aarch64-gnu",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

platform(
    name = "linux_gcc_aarch64",
    constraint_values = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
    ],
)

config_setting(
    name = "is_aarch64",
    constraint_values = [
        "@platforms//cpu:aarch64",
    ],
)