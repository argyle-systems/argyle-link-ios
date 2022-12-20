// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ArgyleLink",
    products: [
        .library(
            name: "ArgyleLink",
            targets: ["ArgyleLink"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ArgyleLink",
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.7.1/ArgyleLink.xcframework.zip",
            checksum: "221d0782e74cc19ee84c476439ca397fba03e63f71490c607d65adc30c8d5afb"
        )
    ]
)
