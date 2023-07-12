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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.2.1/Argyle.xcframework.zip",
            checksum: "606c42b069226ae515827356aa5a187ea764c9c646d889c015874c25129b4982"
        )
    ]
)
