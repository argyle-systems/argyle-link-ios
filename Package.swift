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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.5.0/ArgyleLink.xcframework.zip",
            checksum: "5800d34f115266d044469f1fda5447bdbd82c47274f8abded9b17f8d46600c32"
        )
    ]
)
