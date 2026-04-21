"""Tests for `platforms` module."""

load("@bazel_skylib//lib:unittest.bzl", "asserts", "unittest")
load("//config_settings/spm/platform:platforms.bzl", "platforms")

def _is_supported_test(ctx):
    env = unittest.begin(ctx)

    tests = [
        struct(name = "maccatalyst", exp = False),
    ] + [
        struct(name = name, exp = True)
        for name in platforms.all_values
    ]
    for t in tests:
        actual = platforms.is_supported(t.name)
        msg = getattr(t, "msg", t.name)
        asserts.equals(env, t.exp, actual, msg)

    return unittest.end(env)

is_supported_test = unittest.make(_is_supported_test)

def _supported_test(ctx):
    env = unittest.begin(ctx)

    tests = [
        struct(
            msg = "all valid names",
            names = platforms.all_values,
            exp = platforms.all_values,
        ),
        struct(
            msg = "some invalid names",
            names = [platforms.ios, platforms.maccatalyst, platforms.macos],
            exp = [platforms.ios, platforms.macos],
        ),
        struct(
            msg = "only invalid names",
            names = [platforms.maccatalyst],
            exp = [],
        ),
    ]
    for t in tests:
        actual = platforms.supported(t.names)
        asserts.equals(env, t.exp, actual, t.msg)

    return unittest.end(env)

supported_test = unittest.make(_supported_test)

def _label_test(ctx):
    env = unittest.begin(ctx)

    tests = [
        struct(
            msg = "visionOS normalizes to Bazel platform name",
            name = "visionOS",
            exp = "@rules_swift_package_manager//config_settings/spm/platform:visionos",
        ),
    ]
    for t in tests:
        actual = platforms.label(t.name)
        asserts.equals(env, t.exp, actual, t.msg)

    return unittest.end(env)

label_test = unittest.make(_label_test)

def platforms_test_suite(name = "platforms_tests"):
    return unittest.suite(
        name,
        is_supported_test,
        label_test,
        supported_test,
    )
