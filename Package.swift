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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.10.0/Argyle.xcframework.zip",
            checksum: "46932aa2b93344f37ad4ca49549cfd3646d7e3d4e4711108969b8968a979b7e7"
        )
    ]
)
