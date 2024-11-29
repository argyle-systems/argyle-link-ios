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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.11.0/Argyle.xcframework.zip",
            checksum: "bd4e1776435e3ab14998d9ae42ef3981a06447b1160d22a93435d34728fee76d"
        )
    ]
)
