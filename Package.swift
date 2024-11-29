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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.11.0/Argyle.xcframework.zip",
            checksum: "4171be12f3d2cfe856d5f94f4b6703bb98a282e79e2ffa58668d1fb8f2b47b9b"
        )
    ]
)
