// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ArgyleLink",
    products: [
        .library(
            name: "ArgyleLink",
            targets: ["ArgyleLink"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ArgyleLink",
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.6.2/ArgyleLink.xcframework.zip",
            checksum: "54e4e28f55867788aa57c95deb481ec5993aa912a2659fc1e7d6820951220909"
        )
    ]
)
