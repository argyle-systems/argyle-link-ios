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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.6.1/ArgyleLink.xcframework.zip",
            checksum: "2cf7142ebd36b055d5da9be64ec0ef8244c9aa40411a644828a7a027f79619e3"
        )
    ]
)
