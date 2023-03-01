load("@cgrindel_swift_bazel//swiftpkg:defs.bzl", "local_swift_package", "swift_package")

def swift_dependencies():
    local_swift_package(
        name = "swiftpkg_my_local_package",
        dependencies_index = "@//:swift_deps_index.json",
        path = "third_party/my_local_package",
    )

    # version: 1.15.0
    swift_package(
        name = "swiftpkg_async_http_client",
        commit = "864c8d9e0ead5de7ba70b61c8982f89126710863",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/swift-server/async-http-client.git",
    )

    # version: 1.0.2
    swift_package(
        name = "swiftpkg_jmespath.swift",
        commit = "4513d319c4aaa6c3b2ac18e1e6566a803515ad91",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/adam-fowler/jmespath.swift.git",
    )

    # version: 6.5.0
    swift_package(
        name = "swiftpkg_soto",
        commit = "26bd91a43a3e569956b99b7f15aa2709a1a6ff23",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/soto-project/soto.git",
    )

    # version: 6.4.1
    swift_package(
        name = "swiftpkg_soto_core",
        commit = "cf1c872126e4874144ed2f91aa2124e72388abe0",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/soto-project/soto-core.git",
    )

    # version: 1.2.1
    swift_package(
        name = "swiftpkg_swift_argument_parser",
        commit = "4ad606ba5d7673ea60679a61ff867cc1ff8c8e86",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-argument-parser",
    )

    # version: 1.0.3
    swift_package(
        name = "swiftpkg_swift_atomics",
        commit = "ff3d2212b6b093db7f177d0855adbc4ef9c5f036",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-atomics.git",
    )

    # version: 1.0.4
    swift_package(
        name = "swiftpkg_swift_collections",
        commit = "937e904258d22af6e447a0b72c0bc67583ef64a2",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-collections.git",
    )

    # version: 1.5.1
    swift_package(
        name = "swiftpkg_swift_log",
        commit = "3e3ef75109d6801b2c44504e73f55f0dce6662c9",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-log",
    )

    # version: 2.3.4
    swift_package(
        name = "swiftpkg_swift_metrics",
        commit = "e8bced74bc6d747745935e469f45d03f048d6cbd",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-metrics.git",
    )

    # version: 2.48.0
    swift_package(
        name = "swiftpkg_swift_nio",
        commit = "45167b8006448c79dda4b7bd604e07a034c15c49",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio.git",
    )

    # version: 1.17.0
    swift_package(
        name = "swiftpkg_swift_nio_extras",
        commit = "d75ed708d00353acf173ca23018b6bd46f949464",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-extras.git",
    )

    # version: 1.25.1
    swift_package(
        name = "swiftpkg_swift_nio_http2",
        commit = "860622124b01cc1863b4e65dc449b6b457ca5704",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-http2.git",
    )

    # version: 2.23.0
    swift_package(
        name = "swiftpkg_swift_nio_ssl",
        commit = "4fb7ead803e38949eb1d6fabb849206a72c580f3",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-ssl.git",
    )

    # version: 1.15.0
    swift_package(
        name = "swiftpkg_swift_nio_transport_services",
        commit = "c0d9a144cfaec8d3d596aadde3039286a266c15c",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/apple/swift-nio-transport-services.git",
    )

    # version: 0.50.7
    swift_package(
        name = "swiftpkg_swiftformat",
        commit = "34cd9dd87b78048ce0d623a9153f9bf260ad6590",
        dependencies_index = "@//:swift_deps_index.json",
        remote = "https://github.com/nicklockwood/SwiftFormat",
    )
