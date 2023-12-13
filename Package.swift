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
            checksum: "ecc5babf561fe6255ee8d00fdd867e01af20754956414e70aae6c792b07bb6dc"
        )
    ]
)
