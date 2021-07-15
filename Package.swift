// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Align",
    platforms: [
        .macOS(.v10_14), .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        .library(
            name: "Align",
            targets: ["Align"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Align",
            dependencies: []),
        .testTarget(
            name: "AlignTests",
            dependencies: ["Align"]),
    ]
)
