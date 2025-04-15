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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/1.0.5/ReceiptScannerLibrary.xcframework.zip",
            checksum: "fdae879f5b5f837b5a0329a0626fbe9e6825cb55184eeec40c632b6e0bdf9d87"
        )
    ]
)
