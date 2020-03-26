package(default_visibility = ['//visibility:public'])

config_setting(
    name = "is_gcc_8",
    constraint_values = [
        ":gcc_8",
    ],
)

config_setting(
    name = "is_gcc_9",
    constraint_values = [
        ":gcc_9",
    ],
)

load(":toolchain.bzl", "cc_toolchain_config")
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

toolchain(
    name = "gcc_8_aarch64_xcompile_toolchain",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    target_compatible_with = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        ":gcc_8",
    ],
    toolchain = ":gcc-8-aarch64-gnu",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

toolchain(
    name = "gcc_9_aarch64_xcompile_toolchain",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    target_compatible_with = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
        ":gcc_9",
    ],
    toolchain = ":gcc-9-aarch64-gnu",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

platform(
    name = "linux_gcc_aarch64",
    constraint_values = [
        "@platforms//cpu:aarch64",
        "@platforms//os:linux",
    ],
)

platform(
    name = "linux_gcc_8_aarch64",
    constraint_values = [
        ":gcc_8",
    ],
    parents = [":linux_gcc_aarch64"],
)

platform(
    name = "linux_gcc_9_aarch64",
    constraint_values = [
        ":gcc_9",
    ],
    parents = [":linux_gcc_aarch64"],
)

constraint_setting(name = "gcc_version")

constraint_value(
    name = "gcc_8",
    constraint_setting = ":gcc_version",
)

constraint_value(
    name = "gcc_9",
    constraint_setting = ":gcc_version",
)