load("@rules_python//python:pip.bzl","pip_install")

def lxml_install():
    pip_install(
        name="lxml",
        requirements="lxml",
    )
