// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Telegraph",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "Telegraph",
            targets: ["Telegraph"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/CyberhavenInc/CocoaAsyncSocket.git", .branch("master")),
        .package(url: "https://github.com/Building42/HTTPParserC.git", from: "9.2.0")
    ],
    targets: [
        .target(
            name: "Telegraph",
            dependencies: ["CocoaAsyncSocket", "HTTPParserC"],
            path: "Sources"
        ),
        .testTarget(
            name: "TelegraphTests",
            dependencies: ["CocoaAsyncSocket", "HTTPParserC", "Telegraph"],
            path: "Tests"
        )
    ]
)
