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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.0.0-beta1/Argyle.xcframework.zip",
            checksum: "6b97518f3f12493d6e36797b2e54082420691420c3dac3f884cb2eca3fba7918"
        )
    ]
)
