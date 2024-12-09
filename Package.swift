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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/0.5-beta/ReceiptScannerLibrary.xcframework.zip",
            checksum: "e644ac1357b4c87833ffeeab2155db4bc1fa6bdebbcaf95921c7e0d1eb57314c" 
        )
    ]
)
