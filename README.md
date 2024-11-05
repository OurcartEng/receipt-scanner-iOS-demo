# receipt-scanner-iOS-demo

## Installation
  ### Swift Package Manager:
- #### Add the following URL: https://github.com/OurcartEng/receipt-scanner-iOS-demo .

## Quickstart

### Once you’ve added and linked the SDK, you can start using it in your project files.
- #### Import your framework like this:

```swift
import receiptScannerLibrary

class YourViewController: UIViewController, ReceiptScannerControllerDelegate {

    @IBOutlet weak var openCamera: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openCamera.addTarget(self, action: #selector(openCameraTapped), for: .touchUpInside)
    }

    @IBAction func openCameraTapped(_ sender: UIButton) {
        // Initialize ReceiptScannerController with required parameters
        let scannerVC = ReceiptScannerController(
            isProd: false,
            apiKey: "YOUR_API_KEY",
            clientCountry: "DE",
            clientCode: "DC",
            clientUserID: "cab123"
        )
        
        // Present the scanner
        scannerVC.modalPresentationStyle = .fullScreen
        scannerVC.delegate = self
        present(scannerVC, animated: true)
    }
    
    func didViewReceiptUploadPage() {
        print("Triggered when the receipt upload page is viewed")
    }
    
    func didClickSnapReceipt() {
        print("Triggered when Snap a Receipt button is clicked")
    }
    
    func didClickSubmitForRegularReceipt() {
        print("Triggered when Submit button is clicked for a regular receipt")
    }
    
    func didCompleteSnapReceipt() {
        print("Triggered when the snap receipt process is completed")
    }
    
    func didClickUploadFile() {
        print("Triggered when Upload File button is clicked")
    }
    
    func didCompleteUploadFile() {
        print("Triggered when file upload is completed")
    }
}
```

Input for `ReceiptScanner` constructor:
- **isProduction** (_boolean_) - currently library is hardcoded to staging
- **apiKey** (_string_) - string for Ourcart requests, must match country, environment, and clientCode, provided to you by Ourcart
- **clientCountry** (_string_) - country code for Ourcart requests, provided to you by Ourcart
- **clientCode** (_string_) - client code for Ourcart requests, provided to you by Ourcart
- **clientUserId** (_string_) - id of client to be sended and associated with receipts, it can be any string but have it be a real string associated with currently logged in user, it will help us block fraudulent users and will provide consistent data.


## ReceiptScanner documentation
`ReceiptScanner` class have many attributes allowing you to change initial data, make customization, and react in parent app to user interaction in ReceiptScanner flow:

- ### Constructor (_required_):

  #### Arguments(_required_):
    - **isProduction** (_Boolean_) - currently library is hardcoded to staging
    - **apiKey** (_String_) - string for Ourcart requests, must match country, environment, and clientCode, provided to you by Ourcart
    - **clientCountry** (_String_) - country code for Ourcart requests, provided to you by Ourcart
    - **clientCode** (_String_) - client code for Ourcart requests, provided to you by Ourcart
    - **clientUserId** (_String_) - id of client to be sent and associated with receipts, it can be any string but have it be a real string associated with currently logged in user, it will help us block fraudulent users and will provide consistent data.
  
  #### Arguments(_not required_):
    - **primaryColor** (_UICOLOR_) - color(default: #92C91F) of links, action buttons, and many ornaments, should be the main color of the company
    - **textColor** (_UICOLOR_) - color(default: #333333) of almost all texts
    - **primaryBackgroundColor** (_UICOLOR_) - background color(default: #F9F9F9) of main app actions
    - **textActionButtonColor** (_UICOLOR_) - color(default: #ffffff) of text on action buttons, override only if primaryColor is too light and white text will not be readable on it as a background
    - **initialScreenHeading** (_String_) - text(default: “Receipt upload”) that will be displayed at initial screen as title
    - **initialScreenSubHeading** (_String_) - text(default: “Snap your paper receipt or upload \ndigital receipt file.”) that will be displayed at initial screen under title
    - **finalScreenHeading** (_String_) - text(default: “Upload complete”) that will be displayed at last screen as title
    - **finalScreenSubHeading** (_String_) - text(default: “You\'ll be notified once your\nreceipt is verified.”) that will be displayed at last screen under title
    - **tutorialImages** (_[UIImage]_) - images that overwrite default images in tutorial
    - **tutorialTexts** (_[(text: String, boldParts: [String])]_) - texts that overwrite default texts in tutorial. Each tuple is a text with bold parts, if boldParts is nil, the whole text is normal. e.g. (text: "This is a bold text", boldParts: ["bold"])
    - **fontFamily** (_String_) - font(default: Poppins) that will be used in ReceiptScanner

    #### Events:
  - **didViewReceiptUploadPage** - triggered when the receipt upload page is viewed
  - **didClickSnapReceipt** - triggered when Snap a Receipt button is clicked
  - **didCompleteSnapReceipt** - triggered when the snap receipt process is completed
  - **didClickSubmitForRegularReceipt** - triggered when Submit button is clicked for a regular receipt
  - **didClickUploadFile** - triggered when Upload File button is clicked
  - **didCompleteUploadFile** - triggered when file upload is completed

  ```swift
    func didViewReceiptUploadPage() {
        print("Triggered when the receipt upload page is viewed")
    }
    
    func didClickSnapReceipt() {
        print("Triggered when Snap a Receipt button is clicked")
    }
    
    func didClickSubmitForRegularReceipt() {
        print("Triggered when Submit button is clicked for a regular receipt")
    }
    
    func didCompleteSnapReceipt() {
        print("Triggered when the snap receipt process is completed")
    }
    
    func didClickUploadFile() {
        print("Triggered when Upload File button is clicked")
    }
    
    func didCompleteUploadFile() {
        print("Triggered when file upload is completed")
    }
  ```

## Example:
- #### Set up the `ReceiptScanner` with the initialScreenHeading param:
  ```swift
      let scannerVC = ReceiptScannerController(
          isProd: false,
          apiKey: "YOUR_API_KEY",
          clientCountry: "DE",
          clientCode: "DC",
          clientUserID: "cab123",
          initialScreenHeading: "Welcome to the documentation"
      )
  ```
  ![example_1](https://s3.amazonaws.com/ourcart.platform.assets/images/example1.jpg)

- #### Set up the `ReceiptScanner` with the initialScreenSubHeading param:
  ```swift
      let scannerVC = ReceiptScannerController(
          isProd: false,
          apiKey: "YOUR_API_KEY",
          clientCountry: "US",
          clientCode: "ME",
          clientUserID: "cab123",
          initialScreenSubHeading: "Another documentation example, have a nice day\n lalala"
      )
  ```
    ![example_2](https://s3.amazonaws.com/ourcart.platform.assets/images/example2.jpg)
- #### Set up the `ReceiptScanner` with the finalScreenHeading param:
  ```swift
      let scannerVC = ReceiptScannerController(
          isProd: false,
          apiKey: "YOUR_API_KEY",
          clientCountry: "US",
          clientCode: "ME",
          clientUserID: "cab123",
          finalScreenHeading: "Upload complete"
      )
  ```
  ![example_3](https://s3.amazonaws.com/ourcart.platform.assets/images/example3.jpg)
- #### Set up the `ReceiptScanner` with the finalScreenSubHeading param:
  ```swift
      let scannerVC = ReceiptScannerController(
          isProd: false,
          apiKey: "YOUR_API_KEY",
          clientCountry: "US",
          clientCode: "ME",
          clientUserID: "cab123",
          finalScreenSubHeading: "You\'ll be notified once your\nreceipt is verified."
      )
  ```
  ![example_4](https://s3.amazonaws.com/ourcart.platform.assets/images/example4.jpg)
  - #### Set up the `ReceiptScanner` with the tutorialImages and tutorialTexts params(Important: They need to have the same length):
    ```swift
        let tutorialImages: [UIImage] = [
              UIImage(named: "Tutorial1")!,
              UIImage(named: "Tutorial2")!,
              UIImage(named: "Tutorial3")!,
        ]

        let tutorialTexts: [(text: String, boldParts: [String])] = [
              (text: "The image should be\n clearly readable and\n include all the information\n on the receipt.", boldParts: ["include all the information"]),
              (text: "Snap with minimal\n background, align receipt\n borders to the camera frame.", boldParts: ["minimal\n background"]),
              (text: "Snap a clear picture in\n good lighting. Make sure it is\n not blurry or dark.", boldParts: ["good lighting"]),
        ]
        
        let scannerVC = ReceiptScannerController(
            isProd: false,
            apiKey: "YOUR_API_KEY",
            clientCountry: "US",
            clientCode: "ME",
            clientUserID: "cab123",
            tutorialImages: tutorialImages,
            tutorialTexts: tutorialTexts
        )
    ```

## Customization of colors:
Receipt scanner allows you to set colors of its views by overwriting default values, same is true for font used in it. You can do it like this:

Example:  
Lets set some random colors
```swift
    let scannerVC = ReceiptScannerController(
        isProd: false,
        apiKey: "YOUR_API_KEY",
        clientCountry: "US",
        clientCode: "ME",
        clientUserID: "cab123",
        primaryColor: UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0),
        textColor: UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1.0),
        textActionButtonColor: UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1.0),
        primaryBackgroundColor: UIColor(red: 255/255, green: 0/255, blue: 255/255, alpha: 1.0)
    )
```

The result is:

![example_5](https://s3.amazonaws.com/ourcart.platform.assets/images/example5.jpg)

... beautiful.

## Customization of font:
Same as color you can overwrite font by adding “`fontFamily`” to styles, default font is `Poppins`. Please keep in mind here, that you need to have two versions of fonts on your Project. The naming convention is as follow: YourFont-Regular.ttf and YourFont-Bold.ttf

Example:
```swift
    let scannerVC = ReceiptScannerController(
        isProd: false,
        apiKey: "YOUR_API_KEY",
        clientCountry: "US",
        clientCode: "ME",
        clientUserID: "cab123",
        fontFamily: "Arial"
    )
```

Please add the font to your Info.plist and include that into your project.

