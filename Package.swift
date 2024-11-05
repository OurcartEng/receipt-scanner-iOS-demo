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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/0.3-beta/receiptScannerLibrary.xcframework.zip",
            checksum: "cc031f8d3ba1732f566534a0ca41cc6da7db18cb3e87e8e4f8f9eb5e2ca963f3" 
        )
    ]
)
