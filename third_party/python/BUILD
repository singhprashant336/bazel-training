load("@rules_python//python:defs.bzl","py_runtime_pair")
py_runtime(
    name="py_interpreter",
    interpreter="@python311//:py_interpreter",
    files=["@python311//:py_all"],
    python_version="PY3",
)
py_runtime_pair(
    name="py_runtime",
    py2_runtime=None,
    py3_runtime=":py_interpreter",
)
toolchain(
    name="python_toolchain",
    toolchain=":py_runtime",
    toolchain_type="@bazel_tools//tools/python:toolchain_type",
    exec_compatible_with = [
        "@platforms//os:windows",
        "@platforms//cpu:x86_64",
    ],
)