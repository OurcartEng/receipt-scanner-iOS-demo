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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/1.11.0/ReceiptScannerLibrary.xcframework.zip",
            checksum: "9ad56b991bcbaf7f28a86af87fc0c82eb61b5899790e46cd6cfa9789fcbea3fd"
        )
    ]
)
