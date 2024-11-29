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
            checksum: "0c24a8e1b91efc7282a53fb155d9e6552c7e2d4fbe238dd267e2c7209da14102"
        )
    ]
)
