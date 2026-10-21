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
            checksum: "762a2506e7ee5ffb14685b32a55285cc545159b00ba2a2858942e07d54120740"
        )
    ]
)
