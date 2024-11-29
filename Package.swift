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
            checksum: "9a93d5487fe196cd908349547315a0c402ab169004b2d43f13e18f99c13d5add"
        )
    ]
)
