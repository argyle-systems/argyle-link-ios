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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.15.1/Argyle.xcframework.zip",
            checksum: "ffa86fdf6829b5f85c06dbeecf4ff41782ee1968f0a251e2b84d3690de438b3f"
        )
    ]
)
