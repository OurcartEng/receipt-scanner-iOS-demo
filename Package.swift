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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/1.1.2/ReceiptScannerLibrary.xcframework.zip",
            checksum: "ef385df51c1b5ab17c25d97139abb135d2215affc8cdf5dc3cd150f50ee05881"
        )
    ]
)
