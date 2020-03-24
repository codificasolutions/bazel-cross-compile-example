package(default_visibility = ['//visibility:public'])
load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl", "tool_path")

filegroup(
    name = "all",
    srcs = glob(["**/**"]),
)

filegroup(
    name = "gcc",
    srcs = glob(["bin/*-gcc"]),
)

filegroup(
    name = "ar",
    srcs = glob(["bin/*-ar"])
)

filegroup(
    name = "cpp",
    srcs = glob(["bin/*-cpp"])
)

filegroup(
    name = "gcov",
    srcs = glob(["bin/*-gcov"])
)

filegroup(
    name = "ld",
    srcs = glob(["bin/*-ld"])
)

filegroup(
    name = "nm",
    srcs = glob(["bin/*-nm"])
)

filegroup(
    name = "objcopy",
    srcs = glob(["bin/*-objcopy"])
)

filegroup(
    name = "objdump",
    srcs = glob(["bin/*-objdump"])
)

filegroup(
    name = "strip",
    srcs = glob(["bin/*-strip"])
)

filegroup(
    name = "as",
    srcs = glob(["bin/*-as"])
)

filegroup(
    name = "compiler_components",
    srcs = [
        ":ar",
        ":as",
        ":gcc",
        ":ld",
        ":cpp",
        ":gcov",
        ":nm",
        ":objcopy",
        ":objdump",
        ":strip",
    ],
)