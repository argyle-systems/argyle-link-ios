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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.9.0/Argyle.xcframework.zip",
            checksum: "8e6eb189ae8cd1a0b1d720316f60abe6fa4ddd3c2741c6ceff88eb647066e79f"
        )
    ]
)
