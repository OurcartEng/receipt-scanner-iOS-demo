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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/0.3-beta/receiptScannerLibrary.xcframework.zip?response-content-disposition=inline&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEBMaDGV1LWNlbnRyYWwtMSJGMEQCIATPhYLCgCaXUhSzwqvZQpOOE7W63hBgLUVN1Elb%2FkLWAiByVxLqlj3Oz5jA%2BupPmxh7HP6lRkPqX9%2FDja%2ByPH8UdyrxAwiM%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAQaDDg2NzE1NDk4Nzk4MCIMYDeskxNYZlgy2DvjKsUD4Vk%2FYAj89kq9bJyvLd%2BRBzuqDj2jpd8e70PVTcf0DgJ6wyp94B8TLnYfxQG9AOU5AOSmapL31fpvsvVSntqS8gkmMDNyxpz5QCe%2Ff9fk%2Blp0%2BPJ7%2BVjPDqip7McciOncweynHHQ0r%2FBj1bUHTrEURgSjNLqKhQ9fIkNwmlIqxvVbm6vWMvkbE6ffy9xMjHEgGZ06SaOvqTRMbJkbhJwZhV5Ld2Fg5zmcHcp97fZzUUNeY%2FKOOiQPonMhSyIWRkgpJkWQFVorSONDvHUfmZ3YvtYo3zYU62VlwGtm8SDH%2Ftu1l6IO%2B7p6MqlCMOLhuxy3lGp9Hc4iBBNfVDcpk1SE4GgJ75amQzkSr1i%2F787YtzfKmHhgLCN%2FdlHcV%2BbY99hqGkL4W%2BwVdZCIMbhNzMjPzBHnlpQ9fELRJGhPwn1b08RmaHVX9%2FjETjNV0llBgonIbXUhqttRbqAN6fqoVxPiLjrb63Py5LN0ovsxMk11no9Fojaq2h3kzXqdHqLJLwn%2FVqLZuDaqQqQQm%2FHRlX0BblJDkQcJKWeWv9J1oOjDfIb1cpYTjk%2B2CYq5EMA2dQTIce7JJNmyBfR%2BJFghzAXOR1OtXznnMNDAjbkGOuUCcfHNB%2FugFlyM%2BP9wzgDNwLf31a8qMjzDVuAWLBk0fGxlUzDp8YoxfMrU80ObAfAHv1OqoGAIiroKqgRJogkCiyaGfm81MyFNQysmmzej%2FPW%2BKX4ICKT6e6Om%2BzsJFsfEUSsQZ6t7zkF0RAeYLEYlDeN6b03Bg4pEp3DgakzLuNotZ60EJLiKpIGsLwwgRYDEAI0tEXbVFcsbqLJla0qUiFRsISRu0%2FS06mRg%2Fr5%2BqXzs6Iy612hZtU0YPRIEsnI2vfszNTurLVrkICEQmi4wVph2%2BUEBbZoC4MQrJxk1QyCFe%2BgPI7H1kUJ4JNJaSXrQoWCeUI5fLDEN%2BN%2F8Vp1s9D6%2FX9tU%2Ff4SHRLQY6FAH4ip8rNHrmOWomDc9dEyhFFmMmvK4yDwd1agz49yX4ufamSK8WdZlla2IIaWkPswfBim4JGtza5ov6G39vfaQM%2BMTl1U92bSEF8xu0QemPUK%2BTaYEL8Y&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA4TZTXBPGFEOD43UH%2F20241031%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20241031T104838Z&X-Amz-Expires=43200&X-Amz-SignedHeaders=host&X-Amz-Signature=6cf053c74e50d40dcd2b776e0db1109ae839790e00427b0c9a59024fe94a25e7",
            checksum: "cc031f8d3ba1732f566534a0ca41cc6da7db18cb3e87e8e4f8f9eb5e2ca963f3" 
        )
    ]
)
