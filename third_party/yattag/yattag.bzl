load("@rules_python//python:pip.bzl","pip_install")

def yattag_install():
    pip_install(
        name="yattag",
        requirements="yattag",
    )
