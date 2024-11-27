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
            checksum: "6710e0121540adafb58b8240c6ce2165cf9404b79bbf9908a60c461f2a79a259" 
        )
    ]
)
