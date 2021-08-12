// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PomoIphone",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "PomoIphone",
            targets: ["PomoIphone", "muparser"]),
    ],
    targets: [
        .target(
            name: "PomoIphone",
            dependencies: ["muparser"],
            path: "pomo-iphone"
        ),
        .target(
            name: "muparser",
            path: "vendor/muparser",
            exclude: ["samples"]
        )
    ]
)
