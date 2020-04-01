name = "external_toolchain"

# BUILD_FILE = '''
# package(default_visibility = ['//visibility:public'])

# filegroup(
#     name = "all",
#     srcs = glob(["**/**"]),
# )

# filegroup(
#     name = "gcc",
#     srcs = glob(["bin/*-gcc"]),
# )

# filegroup(
#     name = "ar",
#     srcs = glob(["bin/*-ar"])
# )

# filegroup(
#     name = "cpp",
#     srcs = glob(["bin/*-cpp"])
# )

# filegroup(
#     name = "gcov",
#     srcs = glob(["bin/*-gcov"])
# )

# filegroup(
#     name = "ld",
#     srcs = glob(["bin/*-ld"])
# )

# filegroup(
#     name = "nm",
#     srcs = glob(["bin/*-nm"])
# )

# filegroup(
#     name = "objcopy",
#     srcs = glob(["bin/*-objcopy"])
# )

# filegroup(
#     name = "objdump",
#     srcs = glob(["bin/*-objdump"])
# )

# filegroup(
#     name = "strip",
#     srcs = glob(["bin/*-strip"])
# )

# filegroup(
#     name = "as",
#     srcs = glob(["bin/*-as"])
# )

# filegroup(
#     name = "compiler_components",
#     srcs = [
#         ":ar",
#         ":as",
#         ":gcc",
#         ":ld",
#         ":cpp",
#         ":gcov",
#         ":nm",
#         ":objcopy",
#         ":objdump",
#         ":strip",
#     ],
# )
# '''

# http_archive(
#     name = "gnu_gcc_9_aarch64",
#     build_file_contents = BUILD_FILE,
#     urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz"],
#     sha256 = "8dfe681531f0bd04fb9c53cf3c0a3368c616aa85d48938eebe2b516376e06a66",
#     strip_prefix = "gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu",
# )

# http_archive(
#     name = "gnu_gcc_8_aarch64",
#     build_file_contents = BUILD_FILE,
#     urls = ["https://developer.arm.com/-/media/Files/downloads/gnu-a/8.3-2019.03/binrel/gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu.tar.xz"],
#     sha256 = "8ce3e7688a47d8cd2d8e8323f147104ae1c8139520eca50ccf8a7fa933002731",
#     strip_prefix = "gcc-arm-8.3-2019.03-x86_64-aarch64-linux-gnu/",
# )