load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
# load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def toolchain_dependencies():
    maybe(
        http_archive,
        name = "gnu_gcc_9_aarch64",
        build_file = "@//:gnu_aarch64_gcc.BUILD",
        urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz"],
        sha256 = "8dfe681531f0bd04fb9c53cf3c0a3368c616aa85d48938eebe2b516376e06a66",
        strip_prefix = "gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu",
    )
    maybe(
        http_archive,
        name = "gnu_gcc_8_aarch64",
        build_file = "@//:gnu_aarch64_gcc.BUILD",
        urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-a/8.3-2019.03/binrel/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu.tar.xz"],
        sha256 = "8ce3e7688a47d8cd2d8e8323f147104ae1c8139520eca50ccf8a7fa933002731",
        strip_prefix = "gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/",
    )
