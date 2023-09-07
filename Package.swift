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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.3.0/Argyle.xcframework.zip",
            checksum: "66abe7cb3fa6698087df4eb30b5f80c50c7723e17936a351a6d596a2e150eae2"
        )
    ]
)
