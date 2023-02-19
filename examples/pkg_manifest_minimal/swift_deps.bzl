load("@cgrindel_swift_bazel//swiftpkg:defs.bzl", "local_swift_package", "swift_package")

def swift_dependencies():
    local_swift_package(
        name = "swiftpkg_my_local_package",
        dependencies_index = "@//:swift_deps_index.json",
        path = "third_party/my_local_package",
    )

    # version: 0.9.1
    swift_package(
        name = "swiftpkg_combine_schedulers",
        commit = "882ac01eb7ef9e36d4467eb4b1151e74fcef85ab",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/combine-schedulers",
    )

    # version: 1.2.1
    swift_package(
        name = "swiftpkg_swift_argument_parser",
        commit = "4ad606ba5d7673ea60679a61ff867cc1ff8c8e86",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-argument-parser",
    )

    # version: 0.12.0
    swift_package(
        name = "swiftpkg_swift_case_paths",
        commit = "3c4eea896f8ee9cbe1c11d1d3d46b0f2809da958",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/swift-case-paths",
    )

    # version: 0.2.0
    swift_package(
        name = "swiftpkg_swift_clocks",
        commit = "20b25ca0dd88ebfb9111ec937814ddc5a8880172",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/swift-clocks",
    )

    # version: 1.0.4
    swift_package(
        name = "swiftpkg_swift_collections",
        commit = "937e904258d22af6e447a0b72c0bc67583ef64a2",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-collections",
    )

    # version: 0.51.0
    swift_package(
        name = "swiftpkg_swift_composable_architecture",
        commit = "cd22f6a1b3a6210e1e365cbfa8706dbb1736ca27",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/swift-composable-architecture.git",
    )

    # version: 0.8.0
    swift_package(
        name = "swiftpkg_swift_custom_dump",
        commit = "dd86159e25c749873f144577e5d18309bf57534f",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/swift-custom-dump",
    )

    # version: 0.1.4
    swift_package(
        name = "swiftpkg_swift_dependencies",
        commit = "8282b0c59662eb38946afe30eb403663fc2ecf76",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/swift-dependencies",
    )

    # version: 0.7.0
    swift_package(
        name = "swiftpkg_swift_identified_collections",
        commit = "ad3932d28c2e0a009a0167089619526709ef6497",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/swift-identified-collections",
    )

    # version: 1.5.1
    swift_package(
        name = "swiftpkg_swift_log",
        commit = "3e3ef75109d6801b2c44504e73f55f0dce6662c9",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-log",
    )

    # version: 0.50.7
    swift_package(
        name = "swiftpkg_swiftformat",
        commit = "34cd9dd87b78048ce0d623a9153f9bf260ad6590",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/nicklockwood/SwiftFormat",
    )

    # version: 0.6.1
    swift_package(
        name = "swiftpkg_swiftui_navigation",
        commit = "270a754308f5440be52fc295242eb7031638bd15",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/swiftui-navigation",
    )

    # version: 0.8.3
    swift_package(
        name = "swiftpkg_xctest_dynamic_overlay",
        commit = "62041e6016a30f56952f5d7d3f12a3fd7029e1cd",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/pointfreeco/xctest-dynamic-overlay",
    )
