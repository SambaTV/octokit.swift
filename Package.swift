// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OctoKit",

    products: [
        .library(
            name: "OctoKit",
            targets: ["OctoKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nerdishbynature/RequestKit.git",
                 from: "2.3.0")
    ],
    targets: [
        .target(
            name: "OctoKit",
            dependencies: ["RequestKit"],
            path: ".",
            sources: ["OctoKit"]),
        .testTarget(
            name: "OctoKitTests",
            dependencies: ["OctoKit"]),
    ]
)
