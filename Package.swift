// swift-tools-version:5.3
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
            url: "https://github.com/AgoraIO/AgoraRtm_iOS/releases/download/1.5.1/AgoraRtmKit.xcframework.zip",
            checksum: "f9e6e2402a13573d55ee7c9e5cea23e6dd629ce563ccf159b1e0f21a1f7ecc0b"
        )
    ]
)
