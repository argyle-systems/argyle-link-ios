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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.0.0/Argyle.xcframework.zip",
            checksum: "5735858f4f208080875ad5f4562eb8b53d150cd2ffe3c5ed8304f707a29d7ab2"
        )
    ]
)
