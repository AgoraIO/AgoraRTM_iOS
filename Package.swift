// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "AgoraRTM",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AgoraRTM",
            targets: ["AgoraRtmKit", "AgoraRtmInfra_iOS"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://download.agora.io/rtm2/release/AgoraRtmKit.xcframework_2.2.8_ios.zip",
            checksum: "9c4db9223cb23b43ee68ec6acaa1345b5dd4e06d7a7bd02ba02164bb512c7aaa"
        ),
        .target(
            name: "AgoraRtmInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
