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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.6.0/Argyle.xcframework.zip",
            checksum: "2b8af0e1a23d7cd8225d3b6a9e6e4e579fffe1e5acf018762f414de47b8df03b"
        )
    ]
)
