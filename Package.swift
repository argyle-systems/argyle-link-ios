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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.2.2-alpha4/ArgyleLink.xcframework.zip",
            checksum: "98e401baf4cd50e1779f51169d8542f5b04533f58de315cfb8b64d30d696884f"
        )
    ]
)
