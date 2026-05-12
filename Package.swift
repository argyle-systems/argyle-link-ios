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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.15.2/Argyle.xcframework.zip",
            checksum: "d652eb9c0eb0a10fd4083c40ff5b18bcf42441b3ccf931071d5ec62136c3082f"
        )
    ]
)
