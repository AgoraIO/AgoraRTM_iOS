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
            url: "https://github.com/AgoraIO/AgoraRtm_iOS/releases/download/1.4.8-230/AgoraRtmKit.xcframework.zip",
            checksum: "de1a0e62588ef0e3485e130d5db16aa54874f043eb69a1029c48fe0a43771745"
        )
    ]
)
