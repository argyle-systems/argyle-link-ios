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
            checksum: "ada8b7fb317c14593f7a49f61b901a806c486f10bbdae27158af9746ba02e5a6"
        )
    ]
)
