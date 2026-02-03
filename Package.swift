// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ReceiptScannerLibrary",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ReceiptScannerLibrary",
            targets: ["ReceiptScannerLibrary"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ReceiptScannerLibrary",
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/1.12.0/ReceiptScannerLibrary.xcframework.zip",
            checksum: "c0a970afdcdc573962ad063e3e69a5740689dd47a68eeb0d7a3ae709f1b3d0dd"
        )
    ]
)
