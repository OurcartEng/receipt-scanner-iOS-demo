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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/1.10.0/ReceiptScannerLibrary.xcframework.zip",
            checksum: "fb5d013064b2b24e18c79b096503f2438660b6d778b57beef39238f092c90291"
        )
    ]
)
