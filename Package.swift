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
        .package(url: "https://github.com/AgoraIO/AgoraInfra_iOS.git", from: "1.3.0")
    ],
    targets: [
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://download.agora.io/rtm2/release/AgoraRtmKit.xcframework_2.3.0_ios.zip",
            checksum: "219a8ed88ac44333fce772d76baa59661ec2c05e705e66f5a1d01a21078460cb"
        ),
        .target(
            name: "AgoraRtmInfra_iOS",
            dependencies: [
                .product(name: "AgoraInfra_iOS", package: "AgoraInfra_iOS")
            ]
        )
    ]
)
