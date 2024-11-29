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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.11.0/Argyle.xcframework.zip",
            checksum: "64c1f9b022bc23dd1088eedb9bce53b3f7c5df63a013b69c782c3d5408061d38"
        )
    ]
)
