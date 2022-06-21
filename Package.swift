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
            checksum: "17823d79f306baf2df9e36aee909d931d10cdc93c7a2e8c7f136e8e8964b227f"
        )
    ]
)
