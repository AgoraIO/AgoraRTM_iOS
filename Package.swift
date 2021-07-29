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
            url: "https://download.agora.io/swiftpm/AgoraRTM_iOS/1.4.8/AgoraRtmKit.xcframework.zip",
            checksum: "5bf40fe3bf10d0d05d31ff3031f49d72f338072f3dc4ba2e33a6516a7920b6b1"
        )
    ]
)
