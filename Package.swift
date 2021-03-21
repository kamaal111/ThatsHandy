// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ThatsHandy",
    products: [
        .library(
            name: "ThatsHandy",
            targets: ["ThatsHandy"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ThatsHandy",
            dependencies: []),
        .testTarget(
            name: "ThatsHandyTests",
            dependencies: ["ThatsHandy"]),
    ]
)
