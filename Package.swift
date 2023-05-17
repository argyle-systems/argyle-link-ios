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
            checksum: "e647b0d97c0ff1d4cd82bd23e60ed099273163fa44a0d358c2e993ade33126aa"
        )
    ]
)
