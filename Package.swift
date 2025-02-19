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
            checksum: "4208ff0fa3c52be4f6a670fd15a6fd8c50529cd7b8659ca7fd01f1cdd5dba906"
        )
    ]
)
