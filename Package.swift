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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.4.0/ArgyleLink.xcframework.zip",
            checksum: "e0db04eb6cbe33a57df7667c08731665a1c5edb355d34071c1b1ce028bc92fcf"
        )
    ]
)
