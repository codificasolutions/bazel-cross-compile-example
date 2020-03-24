# Getting started
This example shows cross compilation with two different toolchains.

To build:

```
bazel build //hello-abseil:hello_main --config=xcompile_gcc_9_aarch64
```

Or use:
```
bazel build //hello-abseil:hello_main --config=xcompile_gcc_8_aarch64
```