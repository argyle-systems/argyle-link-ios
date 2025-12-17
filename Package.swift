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
            checksum: "01f98a2b540c1e7436d6e969aa8804e8ebc788d073251cbee5fcc7e823bced3d"
        )
    ]
)
