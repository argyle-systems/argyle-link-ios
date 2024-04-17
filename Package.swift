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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.7.0/Argyle.xcframework.zip",
            checksum: "525e163d9fe442b014466f22485d39ed093d9d9898b9c1bc55d7cf6936a011bd"
        )
    ]
)
