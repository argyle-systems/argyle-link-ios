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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.1.0/Argyle.xcframework.zip",
            checksum: "5936d84b5ef877bcf2bddead95b9c541ae56f5e46c1b57b084a295f9f55a91fe"
        )
    ]
)
