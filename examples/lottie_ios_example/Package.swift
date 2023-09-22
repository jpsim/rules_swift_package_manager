// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "lottie_ios_example",
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm", from: "4.3.0"),
        .package(url: "https://github.com/getsentry/sentry-cocoa", from: "8.12.0"),
    ]
)
