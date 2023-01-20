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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.7.2/ArgyleLink.xcframework.zip",
            checksum: "cf03ba6ee89e29e6c5e554552e56cebfe1d95351dea4df25e8ed95b92f56b4ab"
        )
    ]
)
