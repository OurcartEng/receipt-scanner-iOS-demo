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
            checksum: "80e2acbb0ab2f7196724a243c7d2599aa854a97854494a5839d13f51d6ca4836" 
        )
    ]
)
