# Getting started
This example downloads a cross-compiler from:

https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu.tar.xz

To build:

```
bazel build //hello-abseil:hello_main --config=xcompile_aarch64
```