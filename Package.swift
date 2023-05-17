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
            checksum: "f5c0e38f5df8c341571d8f68c150ff82de34649e0dd5f7cf896b92f147bfbe86"
        )
    ]
)
