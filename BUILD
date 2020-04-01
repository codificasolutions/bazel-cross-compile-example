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
    toolchain = "@external_repo//:gcc-8-aarch64-gnu",
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
    toolchain = "@external_repo//:gcc-9-aarch64-gnu",
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