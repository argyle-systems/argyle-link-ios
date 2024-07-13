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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.7.3/Argyle.xcframework.zip",
            checksum: "6fdd00e259b3d05a6150c6f5b8030a0e96d49706a5428bcec1a3de3b518d59ef"
        )
    ]
)
