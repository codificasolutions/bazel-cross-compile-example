workspace(name = "hello_world")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

load("@//:toolchain/repo_rule.bzl", "configure_toolchain")
configure_toolchain(
  name = "external_repo",
  toolchain_file = "@//:toolchain/toolchain.bzl",
  workspace_file = "@//:toolchain/toolchain.WORKSPACE",
)

load("@//:toolchain/toolchain_deps.bzl", "toolchain_dependencies")
toolchain_dependencies()

# Register any toolchains for cross compilation
register_toolchains(
  ":gcc_8_aarch64_xcompile_toolchain",
  ":gcc_9_aarch64_xcompile_toolchain",
)

# abseil-cpp
http_archive(
  name = "com_google_absl",
  urls = ["https://github.com/abseil/abseil-cpp/archive/c512f118dde6ffd51cb7d8ac8804bbaf4d266c3a.zip"],
  strip_prefix = "abseil-cpp-c512f118dde6ffd51cb7d8ac8804bbaf4d266c3a",
  sha256 = "8400c511d64eb4d26f92c5ec72535ebd0f843067515244e8b50817b0786427f9",
)

# Google Test
http_archive(
  name = "com_google_googletest",
  urls = ["https://github.com/google/googletest/archive/10b1902d893ea8cc43c69541d70868f91af3646b.zip"],
  strip_prefix = "googletest-10b1902d893ea8cc43c69541d70868f91af3646b",
  sha256 = "7c7709af5d0c3c2514674261f9fc321b3f1099a2c57f13d0e56187d193c07e81",
)

# C++ rules for Bazel.
http_archive(
    name = "rules_cc",
    urls = ["https://github.com/bazelbuild/rules_cc/archive/34ca16f4aa4bf2a5d3e4747229202d6cb630ebab.zip"],
    strip_prefix = "rules_cc-34ca16f4aa4bf2a5d3e4747229202d6cb630ebab",
    sha256 = "523c59bb3f16518679668594c8874da46872fde05c32ba246bc0a35ec292f8a6",
)