// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Argyle",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Argyle",
            targets: ["Argyle"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Argyle",
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.16.0/Argyle.xcframework.zip",
            checksum: "1f2a25df49ae822ef44073e2c119659b6580377d30abaa6286767208874b0b32"
        )
    ]
)
