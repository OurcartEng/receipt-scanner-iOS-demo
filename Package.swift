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
    targets: [
        .binaryTarget(
            name: "ReceiptScannerLibrary",
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/1.0.10/ReceiptScannerLibrary.xcframework.zip",
            checksum: "dcac6c45933f66a281322dc42b70c54765e1fc4c7b9c967b378de96f6d581f9a"
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/tensorflow-binary/TensorFlowLiteC.xcframework.zip",
            checksum: "748232b1eccd3ecd7be36f39d1a793580d2f3722ff22b9bf216d7e98128d615c"
        ),
        .binaryTarget(
            name: "TensorFlowLite",
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/tensorflow-binary/TensorFlowLite.xcframework.zip",
            checksum: "abaa4681aaef5c145ceda928a72a407b4e7d6a797e86e9afc44560ff5373d197"
        )
    ]
)
