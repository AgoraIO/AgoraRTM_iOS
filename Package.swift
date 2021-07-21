// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AgoraRtmKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "AgoraRtmKit",
            targets: ["AgoraRtmKit"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://github.com/AgoraIO/AgoraRtm_iOS/releases/download/1.4.7/AgoraRtmKit.xcframework.zip",
            checksum: "f4ac85c823b76809dc70a2d452ee96345dae4c156a766e315716ec7e586eb30f"
        )
    ]
)
