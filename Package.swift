// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "APNumberPad",
    platforms: [
        .iOS(.v9),
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
