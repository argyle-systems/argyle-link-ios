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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.1.1/Argyle.xcframework.zip",
            checksum: "abd3ce2f8f54808997fa6d2051e525bb71acd3d79c29d4c45c32300e25cf3416"
        )
    ]
)
