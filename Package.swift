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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.8.0/Argyle.xcframework.zip",
            checksum: "e7c1b50b2fc4ad5df173a22bc1576f7942fbe694e79bb853ffc6c7ff3018d44f"
        )
    ]
)
