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
            url: "https://github.com/argyle-systems/argyle-link-ios/releases/download/5.10.1/Argyle.xcframework.zip",
            checksum: "1f6fb928bd26c5b0450246caa5da351db464d89990e79c5cc8222eab0f824faa"
        )
    ]
)
