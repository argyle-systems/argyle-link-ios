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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.15.2/Argyle.xcframework.zip",
            checksum: "676a2f279264f6a2b539f1a21c0e8a77a21f08810f08fe8d26c2738ad9a2c4bf"
        )
    ]
)
