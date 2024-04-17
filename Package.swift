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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.7.0/Argyle.xcframework.zip",
            checksum: "ea192aa3e970b31cd614f3ca8cb0a56909195929f7773d039eae1d1c7f73211d"
        )
    ]
)
