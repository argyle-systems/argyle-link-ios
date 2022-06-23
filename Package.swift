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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.2.2-alpha5/ArgyleLink.xcframework.zip",
            checksum: "379d0ddef629f723e9bee751569274f611e95291c8e0553e4f3b2da14e494a50"
        )
    ]
)
