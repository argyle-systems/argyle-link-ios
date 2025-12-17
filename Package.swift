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
            checksum: "89c6f9ddfcd416f5b97d6b921072a43ad66e3cde9695a48c2a2d12fb86a54acb"
        )
    ]
)
