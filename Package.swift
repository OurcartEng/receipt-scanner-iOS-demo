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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/0.4-beta/ReceiptScannerLibrary.xcframework.zip",
            checksum: "07df6ffcc9acfc1b2491ef771345975ab1d15c0c34d3a388b0f4fff707a6f5b8" 
        )
    ]
)
