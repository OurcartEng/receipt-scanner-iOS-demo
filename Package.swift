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
            checksum: "dde73a82442a960c75455a94b71af6dd58857cc5fd4659f9b8e78eae98fe41f3" 
        )
    ]
)
