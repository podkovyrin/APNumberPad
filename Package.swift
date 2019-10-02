// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "APNumberPad",
    platforms: [
        .iOS(.v8),
    ],
    products: [
        .library(
            name: "APNumberPad",
            targets: ["APNumberPad"]),
    ],
    targets: [
        .target(
            name: "APNumberPad",
            path: "APNumberPad"),
    ]
)
