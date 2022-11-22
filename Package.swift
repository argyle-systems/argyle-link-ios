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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/4.7.0/ArgyleLink.xcframework.zip",
            checksum: "e66dcbc814be5ea429bd972d417112920980136c2b96efde0ccaf175c7d58b44"
        )
    ]
)
