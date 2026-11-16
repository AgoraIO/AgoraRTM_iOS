// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AgoraRTM",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "AgoraRTM",
            targets: ["AgoraRtmKit", "AgoraRtmInfra_iOS"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.3.5")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://download.agora.io/rtm2/release/AgoraRtmKit.xcframework_2.3.1_ios.zip",
            checksum: "8b82b200148aaeeeec98450c8a0b103a3f41ba3fc55656a85653bc77b611d5f1"
        ),
        .target(
            name: "AgoraRtmInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
