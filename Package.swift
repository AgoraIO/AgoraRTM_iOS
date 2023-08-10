// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraRtmKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "AgoraRtmKit",
            targets: ["AgoraRtmKit"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://github.com/AgoraIO/AgoraRtm_iOS/releases/download/2.1.4-nightly.23.08.10/AgoraRtmKit.xcframework.zip",
            checksum: "5b227fba49bf7e8f5183f222d5ac5b15851c44576f4dfed1074d6b54c9bf83c4"
        )
    ]
)
