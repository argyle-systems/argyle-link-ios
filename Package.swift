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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.5.1/Argyle.xcframework.zip",
            checksum: "53ec987f7e5b95b52bde7dd0406f27050e730f8dc460e2c1991e6255347993c1"
        )
    ]
)
