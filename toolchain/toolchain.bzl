load(
    "@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl",
    "action_config",
    "feature",
    "flag_group",
    "flag_set",
    "tool",
    "tool_path",
    "with_feature_set",
)
load(
    "@rules_cc//cc:action_names.bzl",
    _ASSEMBLE_ACTION_NAME = "ASSEMBLE_ACTION_NAME",
    _CLIF_MATCH_ACTION_NAME = "CLIF_MATCH_ACTION_NAME",
    _CPP_COMPILE_ACTION_NAME = "CPP_COMPILE_ACTION_NAME",
    _CPP_HEADER_PARSING_ACTION_NAME = "CPP_HEADER_PARSING_ACTION_NAME",
    _CPP_LINK_DYNAMIC_LIBRARY_ACTION_NAME = "CPP_LINK_DYNAMIC_LIBRARY_ACTION_NAME",
    _CPP_LINK_EXECUTABLE_ACTION_NAME = "CPP_LINK_EXECUTABLE_ACTION_NAME",
    _CPP_LINK_NODEPS_DYNAMIC_LIBRARY_ACTION_NAME = "CPP_LINK_NODEPS_DYNAMIC_LIBRARY_ACTION_NAME",
    _CPP_MODULE_CODEGEN_ACTION_NAME = "CPP_MODULE_CODEGEN_ACTION_NAME",
    _CPP_MODULE_COMPILE_ACTION_NAME = "CPP_MODULE_COMPILE_ACTION_NAME",
    _C_COMPILE_ACTION_NAME = "C_COMPILE_ACTION_NAME",
    _LINKSTAMP_COMPILE_ACTION_NAME = "LINKSTAMP_COMPILE_ACTION_NAME",
    _LTO_BACKEND_ACTION_NAME = "LTO_BACKEND_ACTION_NAME",
    _PREPROCESS_ASSEMBLE_ACTION_NAME = "PREPROCESS_ASSEMBLE_ACTION_NAME",
)

all_compile_actions = [
    _C_COMPILE_ACTION_NAME,
    _CPP_COMPILE_ACTION_NAME,
    _LINKSTAMP_COMPILE_ACTION_NAME,
    _ASSEMBLE_ACTION_NAME,
    _PREPROCESS_ASSEMBLE_ACTION_NAME,
    _CPP_HEADER_PARSING_ACTION_NAME,
    _CPP_MODULE_COMPILE_ACTION_NAME,
    _CPP_MODULE_CODEGEN_ACTION_NAME,
    _CLIF_MATCH_ACTION_NAME,
    _LTO_BACKEND_ACTION_NAME,
]

all_cpp_compile_actions = [
    _CPP_COMPILE_ACTION_NAME,
    _LINKSTAMP_COMPILE_ACTION_NAME,
    _CPP_HEADER_PARSING_ACTION_NAME,
    _CPP_MODULE_COMPILE_ACTION_NAME,
    _CPP_MODULE_CODEGEN_ACTION_NAME,
    _CLIF_MATCH_ACTION_NAME,
]

preprocessor_compile_actions = [
    _C_COMPILE_ACTION_NAME,
    _CPP_COMPILE_ACTION_NAME,
    _LINKSTAMP_COMPILE_ACTION_NAME,
    _PREPROCESS_ASSEMBLE_ACTION_NAME,
    _CPP_HEADER_PARSING_ACTION_NAME,
    _CPP_MODULE_COMPILE_ACTION_NAME,
    _CLIF_MATCH_ACTION_NAME,
]

codegen_compile_actions = [
    _C_COMPILE_ACTION_NAME,
    _CPP_COMPILE_ACTION_NAME,
    _LINKSTAMP_COMPILE_ACTION_NAME,
    _ASSEMBLE_ACTION_NAME,
    _PREPROCESS_ASSEMBLE_ACTION_NAME,
    _CPP_MODULE_CODEGEN_ACTION_NAME,
    _LTO_BACKEND_ACTION_NAME,
]

all_link_actions = [
    _CPP_LINK_EXECUTABLE_ACTION_NAME,
    _CPP_LINK_DYNAMIC_LIBRARY_ACTION_NAME,
    _CPP_LINK_NODEPS_DYNAMIC_LIBRARY_ACTION_NAME,
]

def _impl(ctx):

    host_system_name = "aarch64"
    abi_version = "aarch64"
    abi_libc_version = "aarch64"
    cc_target_os = None
    builtin_sysroot = None

    objcopy_embed_data_action = []
    action_configs = []
    toolchain_identifier = "aarch64-linux"

    random_seed_feature = feature(name = "random_seed", enabled = True)
    supports_pic_feature = feature(name = "supports_pic", enabled = True)
    target_system_name = "aarch64"
    target_cpu = "aarch64"
    target_libc = "aarch64"
    compiler = "compiler"

    compiler_output_flags_feature = None

    default_link_flags_feature = feature(
        name = "default_link_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = all_link_actions,
                flag_groups = [
                    flag_group(
                        flags = [
                            "-lstdc++",
                            "-Wl,-z,relro,-z,now",
                            "-pass-exit-codes",
                            "-lm",
                        ],
                    ),
                ],
            ),
            flag_set(
                actions = all_link_actions,
                flag_groups = [flag_group(flags = ["-Wl,--gc-sections"])],
                with_features = [with_feature_set(features = ["opt"])],
            ),
        ],
    )

    unfiltered_compile_flags_feature = feature(
        name = "unfiltered_compile_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    _ASSEMBLE_ACTION_NAME,
                    _PREPROCESS_ASSEMBLE_ACTION_NAME,
                    _LINKSTAMP_COMPILE_ACTION_NAME,
                    _C_COMPILE_ACTION_NAME,
                    _CPP_COMPILE_ACTION_NAME,
                    _CPP_HEADER_PARSING_ACTION_NAME,
                    _CPP_MODULE_COMPILE_ACTION_NAME,
                    _CPP_MODULE_CODEGEN_ACTION_NAME,
                    _LTO_BACKEND_ACTION_NAME,
                    _CLIF_MATCH_ACTION_NAME,
                ],
                flag_groups = [
                    flag_group(
                        flags = [
                            "-no-canonical-prefixes",
                            "-fno-canonical-system-headers",
                            "-Wno-builtin-macro-redefined",
                            "-D__DATE__=\"redacted\"",
                            "-D__TIMESTAMP__=\"redacted\"",
                            "-D__TIME__=\"redacted\"",
                        ],
                    ),
                ],
            ),
        ],
    )

    default_compile_flags_feature = feature(
        name = "default_compile_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    _ASSEMBLE_ACTION_NAME,
                    _PREPROCESS_ASSEMBLE_ACTION_NAME,
                    _LINKSTAMP_COMPILE_ACTION_NAME,
                    _C_COMPILE_ACTION_NAME,
                    _CPP_COMPILE_ACTION_NAME,
                    _CPP_HEADER_PARSING_ACTION_NAME,
                    _CPP_MODULE_COMPILE_ACTION_NAME,
                    _CPP_MODULE_CODEGEN_ACTION_NAME,
                    _LTO_BACKEND_ACTION_NAME,
                    _CLIF_MATCH_ACTION_NAME,
                ],
                flag_groups = [
                    flag_group(
                        flags = [
                            "-fstack-protector",
                            "-Wall",
                            "-fno-omit-frame-pointer",
                        ],
                    ),
                ],
            ),
            flag_set(
                actions = [
                    _ASSEMBLE_ACTION_NAME,
                    _PREPROCESS_ASSEMBLE_ACTION_NAME,
                    _LINKSTAMP_COMPILE_ACTION_NAME,
                    _C_COMPILE_ACTION_NAME,
                    _CPP_COMPILE_ACTION_NAME,
                    _CPP_HEADER_PARSING_ACTION_NAME,
                    _CPP_MODULE_COMPILE_ACTION_NAME,
                    _CPP_MODULE_CODEGEN_ACTION_NAME,
                    _LTO_BACKEND_ACTION_NAME,
                    _CLIF_MATCH_ACTION_NAME,
                ],
                flag_groups = [flag_group(flags = ["-g"])],
                with_features = [with_feature_set(features = ["dbg"])],
            ),
            flag_set(
                actions = [
                    _ASSEMBLE_ACTION_NAME,
                    _PREPROCESS_ASSEMBLE_ACTION_NAME,
                    _LINKSTAMP_COMPILE_ACTION_NAME,
                    _C_COMPILE_ACTION_NAME,
                    _CPP_COMPILE_ACTION_NAME,
                    _CPP_HEADER_PARSING_ACTION_NAME,
                    _CPP_MODULE_COMPILE_ACTION_NAME,
                    _CPP_MODULE_CODEGEN_ACTION_NAME,
                    _LTO_BACKEND_ACTION_NAME,
                    _CLIF_MATCH_ACTION_NAME,
                ],
                flag_groups = [
                    flag_group(
                        flags = [
                            "-g0",
                            "-O2",
                            "-DNDEBUG",
                            "-ffunction-sections",
                            "-fdata-sections",
                            "-U_FORTIFY_SOURCE",
                            "-D_FORTIFY_SOURCE=1",
                        ],
                    ),
                ],
                with_features = [with_feature_set(features = ["opt"])],
            ),
            flag_set(
                actions = [
                    _LINKSTAMP_COMPILE_ACTION_NAME,
                    _CPP_COMPILE_ACTION_NAME,
                    _CPP_HEADER_PARSING_ACTION_NAME,
                    _CPP_MODULE_COMPILE_ACTION_NAME,
                    _CPP_MODULE_CODEGEN_ACTION_NAME,
                    _LTO_BACKEND_ACTION_NAME,
                    _CLIF_MATCH_ACTION_NAME,
                ],
                flag_groups = [flag_group(flags = ["-std=c++0x"])],
            ),
        ],
    )


    opt_feature = feature(name = "opt")

    supports_dynamic_linker_feature = feature(name = "supports_dynamic_linker", enabled = True)

    objcopy_embed_flags_feature = feature(
        name = "objcopy_embed_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = ["objcopy_embed_data"],
                flag_groups = [flag_group(flags = ["-I", "binary"])],
            ),
        ],
    )

    dbg_feature = feature(name = "dbg")

    user_compile_flags_feature = feature(
        name = "user_compile_flags",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    _ASSEMBLE_ACTION_NAME,
                    _PREPROCESS_ASSEMBLE_ACTION_NAME,
                    _LINKSTAMP_COMPILE_ACTION_NAME,
                    _C_COMPILE_ACTION_NAME,
                    _CPP_COMPILE_ACTION_NAME,
                    _CPP_HEADER_PARSING_ACTION_NAME,
                    _CPP_MODULE_COMPILE_ACTION_NAME,
                    _CPP_MODULE_CODEGEN_ACTION_NAME,
                    _LTO_BACKEND_ACTION_NAME,
                    _CLIF_MATCH_ACTION_NAME,
                ],
                flag_groups = [
                    flag_group(
                        flags = ["%{user_compile_flags}"],
                        iterate_over = "user_compile_flags",
                        expand_if_available = "user_compile_flags",
                    ),
                ],
            ),
        ],
    )

    sysroot_feature = None

    include_paths_feature = feature(
        name = "include_paths",
        enabled = True,
        flag_sets = [
            flag_set(
                actions = [
                    _PREPROCESS_ASSEMBLE_ACTION_NAME,
                    _C_COMPILE_ACTION_NAME,
                    _CPP_COMPILE_ACTION_NAME,
                    _CPP_HEADER_PARSING_ACTION_NAME,
                    _CPP_MODULE_COMPILE_ACTION_NAME,
                ],
                flag_groups = [
                    flag_group(
                        flags = ["-I%{quote_include_paths}"],
                        iterate_over = "quote_include_paths",
                    ),
                    flag_group(
                        flags = ["-I%{include_paths}"],
                        iterate_over = "include_paths",
                    ),
                    flag_group(
                        flags = ["-I%{system_include_paths}"],
                        iterate_over = "system_include_paths",
                    ),
                ],
            ),
        ],
    )

    dependency_file_feature = None

    compiler_input_flags_feature = feature(
        name = "compiler_input_flags",
        flag_sets = [
            flag_set(
                actions = [
                    _ASSEMBLE_ACTION_NAME,
                    _PREPROCESS_ASSEMBLE_ACTION_NAME,
                    _C_COMPILE_ACTION_NAME,
                    _CPP_COMPILE_ACTION_NAME,
                    _CPP_HEADER_PARSING_ACTION_NAME,
                    _CPP_MODULE_COMPILE_ACTION_NAME,
                    _CPP_MODULE_CODEGEN_ACTION_NAME,
                ],
                flag_groups = [
                    flag_group(
                        flags = ["-c", "%{source_file}"],
                        expand_if_available = "source_file",
                    ),
                ],
            ),
        ],
    )

    fastbuild_feature = feature(name = "fastbuild")

    features = [
        default_compile_flags_feature,
        default_link_flags_feature,
        supports_dynamic_linker_feature,
        supports_pic_feature,
        objcopy_embed_flags_feature,
        opt_feature,
        dbg_feature,
        user_compile_flags_feature,
        fastbuild_feature,
        unfiltered_compile_flags_feature,
        compiler_input_flags_feature,
        # random_seed_feature,
        # include_paths_feature,
    ]

    cxx_builtin_include_directories = []

    artifact_name_patterns = []
    make_variables = []

    tool_paths = []
    for k in ctx.attr.tool_paths.files.to_list():
        name = k.basename.split("-")[-1] # Attempts to get toolname
        if name in ["gcc", "ar", "cpp",
                    "gcov", "ld", "nm",
                    "objcopy", "objdump",
                    "strip", "as"]:
            path = k.path.replace('external_repo/external/', '')
            tool_paths.append(
                tool_path(
                    name = name,
                    path = path,
                )
            )
        else:
            fail("Not a tool: {} \nParsed from: {}".format(name, k.basename))

    print(tool_paths)

    out = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.write(out, "Fake executable")
    return [
        cc_common.create_cc_toolchain_config_info(
            ctx = ctx,
            features = features,
            action_configs = action_configs,
            artifact_name_patterns = artifact_name_patterns,
            cxx_builtin_include_directories = cxx_builtin_include_directories,
            toolchain_identifier = toolchain_identifier,
            host_system_name = host_system_name,
            target_system_name = target_system_name,
            target_cpu = target_cpu,
            target_libc = target_libc,
            compiler = compiler,
            abi_version = abi_version,
            abi_libc_version = abi_libc_version,
            tool_paths = tool_paths,
            make_variables = make_variables,
            builtin_sysroot = builtin_sysroot,
            cc_target_os = cc_target_os,
        ),
        DefaultInfo(
            executable = out,
        ),
    ]

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {
        "tool_paths": attr.label(
            mandatory = True,
        ),
    },
    provides = [CcToolchainConfigInfo],
    executable = True,
)