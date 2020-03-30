# Copyright 2018 Google Inc.  All rights reserved
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

workspace(name = "com_google_absl_hello_world")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Register any toolchains for cross compilation
register_toolchains(
    ":linux_gcc_8_aarch64_xcompile_toolchain",
    ":linux_gcc_9_aarch64_xcompile_toolchain",
    ":macos_gcc_8_aarch64_xcompile_toolchain",
    ":macos_gcc_8_aarch64_xcompile_toolchain",
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

# For the toolchain.
http_archive(
    name = "gnu_gcc_9_aarch64",
    build_file = "@//:gnu_aarch64_gcc.BUILD",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz"],
    sha256 = "8dfe681531f0bd04fb9c53cf3c0a3368c616aa85d48938eebe2b516376e06a66",
    strip_prefix = "gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu",
)

http_archive(
    name = "gnu_gcc_8_aarch64",
    build_file = "@//:gnu_aarch64_gcc.BUILD",
    urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-a/8.3-2019.03/binrel/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu.tar.xz"],
    sha256 = "8ce3e7688a47d8cd2d8e8323f147104ae1c8139520eca50ccf8a7fa933002731",
    strip_prefix = "gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/",
)