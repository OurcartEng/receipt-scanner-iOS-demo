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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/0.2-beta/receiptScannerLibrary.xcframework.zip?response-content-disposition=inline&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEAcaDGV1LWNlbnRyYWwtMSJIMEYCIQCLZzvTyPxiLVbg%2FdOWN4J8cbrcllkKoeEJNzCUTB57AwIhAMzZw0AyRvD3amdP%2Btx%2Bn5uVNySCiWisim3ZlHcdwBP1KusDCID%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQBBoMODY3MTU0OTg3OTgwIgwQayr%2BXCguWHk1FmwqvwPcD%2BHMZKEYOlD2jSBKEY4m6xLDnXEktsT3cA77DGn1bAWhIR6DbPBxSg7xhtem%2F2JVUD8OEonVkbEfAGyjAj9DIrF0pYtAdGSGrJ9nQKDA7jI83EdqoDz3vfcxs45Aef7ZCSpnVwJAr7FsC0NAn7mPm4VSyqBUvKu2tdAtDbc48aupRcKG4arF7DrLACfKduHv9f1ik0XzaNXjTGzizBXH60xb1fGWglEO7kksC5oj%2FJ1aYsCGETS0qeUBXny%2BcUGaTVf1oL42dPtdA9mJ99t3yCkC1yFh5QYrxsmuIqHElt5PgexDiqIiUg7cO3niTSBOdOlIeAoQWpMpvnZc2K0ZWbNlt%2F4s6Di2kWAgFOsHnfcZve31SX1afNSuOppA5PiWdStHI9iRMOAydpkr%2FSNmqHx1814KbmLZMOb1ebT%2B8H3HTgBPCDr9ynBm4DyJnytYZCecptNh%2B4VUravsLCbA6hZRPlIKRaMSdCmJINDeGftyDjs%2FC634xOmzudD7lO%2Fktw8IW2ELbqanWm2KlmJ9a7k%2BCkv8CLcEx2MpGTjVkrS2SqurLDULdXUMG1tpxO0NLvyWNKhc6nVsvh4ouewwi7SIuQY64wL4d4Wwhb7HUYZpa4hXhOZ83%2BLhXHK6dow5MtMGoDfdzFVMq4YNjFfVwRL1JtGaqeerCUfJoSwLPjhHGd0jzeCk7p%2BDkBmLiMGal4rZrVi%2FeXEYgcnDSsfQuHKsgtMd51vQpQMnB9zkjDSSaeXQ7lZz9ecOdSIIa2PcHo%2FrWId2grYqdf7JlnmXsdx22G3y1qNFnvMjuiqSwCyhPEH9yEFJJXTB7wIg9MoY13MDcCQqC6j1YxUntvs%2BXYvQ4A6HRZbc5KX34uTmo6gWJ%2F%2B%2Bz4ITPSdfOVugIyZMaC5JmxYqquTL0wgeCPisRqVvICUlSWq%2BvI3Ch8ahFP%2BdZBGObzu%2FEfm9crMG2yFlKWxDX%2B%2FNhXo%2FEXup5ae%2BQMicAY24DsMbc2JobHhGXg2lYB2ymS6FVchuHLEMpYLICAA9BwDk59yA19Tkx3el7%2BdY%2FBCe0XR9AYDXfp%2BgnWmgjEYDLZuLdlB%2F&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA4TZTXBPGDAQ4YMYG%2F20241030%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20241030T231502Z&X-Amz-Expires=43200&X-Amz-SignedHeaders=host&X-Amz-Signature=c7597c06706c5c85bb75200f3dc3fe71d469d3cdad8bbdb57ae40c5da6477e45",
            checksum: "5c307bb0309595a7af2fb7c80a5aa10688f57e7398998ada694cd548470cc6a6" 
        )
    ]
)
