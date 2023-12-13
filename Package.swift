// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Argyle",
    products: [
        .library(
            name: "Argyle",
            targets: ["Argyle"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Argyle",
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.5.0/Argyle.xcframework.zip",
            checksum: "4fab9fc530685a3cc52b2782d3ad4f589d9f1bce3b7ad9d5c4a3ebfdd5d94074"
        )
    ]
)
