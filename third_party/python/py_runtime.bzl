load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def py_runtime_windows():
    native.new_local_repository(
        name="python311",
        path="C:/Users/prash/AppData/Local/Programs/Python/Python310",
        build_file="C:/Users/prash/Documents/MyProject/bazel_demo/third_party/python/py311.BUILD",
    )
    http_archive(
        name = "rules_python",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.5.0/rules_python-0.5.0.tar.gz",
        sha256 = "cd6730ed53a002c56ce4e2f396ba3b3be262fd7cb68339f0377a45e8227fe332",
    )