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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.5.0/Argyle.xcframework.zip",
            checksum: "cb97aba4d2243abd79e4712ce2f8ab942080b71bd5e8c3f59f632a295723adaf"
        )
    ]
)
