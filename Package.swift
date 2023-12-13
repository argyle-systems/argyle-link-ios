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
            checksum: "d9a5940e874628040f1c17ce6ad05523c0db6993b4d7d1623bc0b6b6d7a9042e"
        )
    ]
)
