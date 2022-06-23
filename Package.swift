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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.2.2/ArgyleLink.xcframework.zip",
            checksum: "c12336d67ada4696f262c5ba9623cce243137b53f75833e776ef40401676dd2d"
        )
    ]
)
