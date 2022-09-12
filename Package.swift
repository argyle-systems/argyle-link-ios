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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.6.0/ArgyleLink.xcframework.zip",
            checksum: "d23f1ef0e0710543f2114ab2305818598485f55479cbfb5e6dd9d94a36480656"
        )
    ]
)
