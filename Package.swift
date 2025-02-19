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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.13.0/Argyle.xcframework.zip",
            checksum: "31d98ec3cddf117c955de1ed07711944758e292dabaaf7817c2bbef82d1e4139"
        )
    ]
)
