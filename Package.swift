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
        .package(url: "https://github.com/Building42/HTTPParserC.git", .revision("df96a9e5d9f690e2997fb21ee1c8dae8eb401461"))
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
