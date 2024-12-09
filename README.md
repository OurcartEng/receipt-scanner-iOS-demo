# receipt-scanner-iOS-demo

## Installation
  ### Swift Package Manager:
- #### Add the following URL: https://github.com/OurcartEng/receipt-scanner-iOS-demo .

## Quickstart

### Once you’ve added and linked the SDK, you can start using it in your project files.
- #### Import your framework like this:

```swift
import ReceiptScannerLibrary

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
            clientUserID: "cab123",
        )
        
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

Parameters for `ReceiptScanner` constructor:
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
    - **primaryColor** (_UICOLOR_) - color of links, action buttons, and many ornaments, should be the main color of the company
    - **textColor** (_UICOLOR_) - color(default: #333333) of almost all texts
    - **primaryBackgroundColor** (_UICOLOR_) - background color(default: #F9F9F9) of main app actions
    - **secondaryBackgroundColor** (_UICOLOR_) - color(default: #ffffff) action bars and modals
    - **backgroundPopupColor** (_UICOLOR_) - color(default: #ffffff) modals background
    - **preValidation** (_Boolean_) - By default after user sends receipt there will be waiting time to check the result of transcription and present user with potential validation error. If you want to move user to the end screen without waiting for validation of receipt use this method to set flag to false. User will have manual review screen displayed.
  
    - ### Primary button - buttons: Crop, Done, Continue to Upload, Next, Submit
    - **actionButtonTextColor** (_UICOLOR_) - color(default: #ffffff) change only if you dont want it to be "text color", color of text at the "tile buttons"
    - **actionButtonBackgroundColor** (_UICOLOR_) - color(default: @primaryColor) background of tile buttons at the first view (pink buttons in the example above)
    - **actionButtonIconColor** (_UICOLOR_) - color(default: #ffffff) change only if you dont want it to be "primary color", color of icon at the "tile buttons"
    - ### Link button - Link buttons: Tutorial, Retake, Retake All, I’ll upload later
    - **actionTextBackgroundColor** (_UICOLOR_) - color(default: #ffffff) background of tile buttons at the first view (ping in the example)
    - **actionTextColor** (_UICOLOR_) - color(default: @primaryColor) change only if you dont want it to be "text color", color of text at the "tile buttons"
    - **actionTextIconColor** (_UICOLOR_) - color(default: @primaryColor) change only if you dont want it to be "primary color", color of icon at the "tile buttons"
    - ### Tile button - two buttons on initial screen: Upload Receipt, Snap a Receipt
    - **tileButtonBackgroundColor** (_UICOLOR_) - color(default: #ffffff) background of tile buttons at the first view (ping in the example)
    - **tileButtonIconColor** (_UICOLOR_) - color(default: @primaryColor) change only if you dont want it to be "primary color", color of icon at the "tile buttons"
    - **tileButtonTextColor** (_UICOLOR_) - color(default: @textColor) change only if you dont want it to be "text color", color of text at the "tile buttons"

    - ### Other configs
    - **initialScreenHeading** (_String_) - text(default: “Receipt upload”) that will be displayed at initial screen as title
    - **initialScreenSubHeading** (_String_) - text(default: “Snap your paper receipt or upload \ndigital receipt file.”) that will be displayed at initial screen under title
    - **finalScreenHeading** (_String_) - text(default: “Upload complete”) that will be displayed at last screen as title
    - **finalScreenSubHeading** (_String_) - text(default: “You\'ll be notified once your\nreceipt is verified.”) that will be displayed at last screen under title
    - **finalScreenManualReviewHeading** (_String_) - text(default: “You\'ll be notified once your\nreceipt is verified.”) that will be displayed at last screen under title
    - **finalScreenManualReviewSubHeading** (_String_) - text(default: “You\'ll be notified once your\nreceipt is verified.”) that will be displayed at last screen under title
    - 
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
        
        scannerVC.modalPresentationStyle = .fullScreen
        scannerVC.delegate = self
        present(scannerVC, animated: true)
  ```
  ![example_1](https://s3.amazonaws.com/ourcart.platform.assets/images/iOS_example_1.jpg)

- #### Set up the `ReceiptScanner` with the initialScreenSubHeading param:
  ```swift
      let scannerVC = ReceiptScannerController(
            isProd: false,
            apiKey: "YOUR_API_KEY",
            clientCountry: "DE",
            clientCode: "DC",
            clientUserID: "cab123",
            initialScreenSubHeading: "Another documentation example, have a nice day\n lalala"
        )
        
        scannerVC.modalPresentationStyle = .fullScreen
        scannerVC.delegate = self
        present(scannerVC, animated: true)
  ```
    ![example_2](https://s3.amazonaws.com/ourcart.platform.assets/images/iOS_example_1.jpg)
- #### Set up the `ReceiptScanner` with the finalScreenHeading param:
  ```swift
        let scannerVC = ReceiptScannerController(
            isProd: false,
            apiKey: "YOUR_API_KEY",
            clientCountry: "DE",
            clientCode: "DC",
            clientUserID: "cab123",
            finalScreenHeading: "Upload complete"
        )
        
        scannerVC.modalPresentationStyle = .fullScreen
        scannerVC.delegate = self
        present(scannerVC, animated: true)
  ```
  ![example_3](https://s3.amazonaws.com/ourcart.platform.assets/images/iOS_example_1.jpg)
- #### Set up the `ReceiptScanner` with the finalScreenSubHeading param:
  ```swift
        let scannerVC = ReceiptScannerController(
            isProd: false,
            apiKey: "YOUR_API_KEY",
            clientCountry: "DE",
            clientCode: "DC",
            clientUserID: "cab123",
            finalScreenSubHeading: "You\'ll be notified once your\nreceipt is verified."
        )
        
        scannerVC.modalPresentationStyle = .fullScreen
        scannerVC.delegate = self
        present(scannerVC, animated: true)
  ```
  ![example_4](https://s3.amazonaws.com/ourcart.platform.assets/images/iOS_example_1.jpg)
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
            clientCountry: "DE",
            clientCode: "DC",
            clientUserID: "cab123",
            tutorialImages: tutorialImages,
            tutorialTexts: tutorialTexts
        )
        
        scannerVC.modalPresentationStyle = .fullScreen
        scannerVC.delegate = self
        present(scannerVC, animated: true)
  ```

## Customization of colors:
Receipt scanner allows you to set colors of its views by overwriting default values, same is true for font used in it. You can do it like this:

Example:  
Lets set some random colors
```swift
        let scannerVC = ReceiptScannerController(
            isProd: false,
            apiKey: "YOUR_API_KEY",
            clientCountry: "DE",
            clientCode: "DC",
            clientUserID: "cab123",
            preValidation: false,
            primaryColor: UIColor(red: 242/255, green: 183/255, blue: 0/255, alpha: 1.0),
            textColor:  UIColor(red: 250/255, green: 3/255, blue: 87/255, alpha: 1.0),
            primaryBackgroundColor: UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0),
            backgroundPopupColor: UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1.0),
            
            actionButtonTextColor: UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0),
            actionButtonBackgroundColor: UIColor(red: 143/255, green: 38/255, blue: 38/255, alpha: 1.0),
            actionButtonIconColor: UIColor(red: 255/255, green: 235/255, blue: 59/255, alpha: 1.0),
            
            actionTextBackgroundColor: UIColor(red: 166/255, green: 255/255, blue: 0/255, alpha: 1.0),
            actionTextColor: UIColor(red: 83/255, green: 104/255, blue: 214/255, alpha: 1.0),
            actionTextIconColor: UIColor(red: 189/255, green: 126/255, blue: 126/255, alpha: 1.0),
            
            tileButtonBackgroundColor: UIColor(red: 242/255, green: 183/255, blue: 0/255, alpha: 1.0),
            tileButtonIconColor: UIColor(red: 86/255, green: 36/255, blue: 111/255, alpha: 1.0),
            tileButtonTextColor: UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1.0),
            finalScreenHeading: "Upload comlpeted",
            finalScreenSubHeading: "Your receipt has been uploaded successfully"
        )
        
        scannerVC.modalPresentationStyle = .fullScreen
        scannerVC.delegate = self
        present(scannerVC, animated: true)
```

The result is:

![example_5](https://s3.us-east-1.amazonaws.com/ourcart.platform.assets/images/iOS_example1.png)

... beautiful.

## Customization of font:
Same as color you can overwrite font by adding “`fontFamily`” to styles, default font is `Poppins`. Please keep in mind here, that you need to have two versions of fonts on your Project. The naming convention is as follow: YourFont-Regular.ttf and YourFont-Bold.ttf

Example:
```swift
        let scannerVC = ReceiptScannerController(
            isProd: false,
            apiKey: "YOUR_API_KEY",
            clientCountry: "DE",
            clientCode: "DC",
            clientUserID: "cab123",
            fontFamily: "Arial"
        )
        
        scannerVC.modalPresentationStyle = .fullScreen
        scannerVC.delegate = self
        present(scannerVC, animated: true)
```

Please add the font to your Info.plist and include that into your project.

## Customization of text:

The SDK uses a built-in Localizable.strings file with keys as below.To override those, please create your own Localizable.strings with specified keys. 

### Placement of most texts:
![readme_1](https://s3.amazonaws.com/ourcart.platform.assets/images/readme1.jpg)
![readme_2](https://s3.amazonaws.com/ourcart.platform.assets/images/readme1_1.jpg)
![readme_3](https://s3.amazonaws.com/ourcart.platform.assets/images/readme2.jpg)
![readme_4](https://s3.amazonaws.com/ourcart.platform.assets/images/readme3.jpg)
![readme_5](https://s3.amazonaws.com/ourcart.platform.assets/images/readme4.jpg)
![readme_6](https://s3.amazonaws.com/ourcart.platform.assets/images/readme5.jpg)
![readme_7](https://s3.amazonaws.com/ourcart.platform.assets/images/readme6_1.jpg)
![readme_8](https://s3.amazonaws.com/ourcart.platform.assets/images/readme7.jpg)
![readme_9](https://s3.amazonaws.com/ourcart.platform.assets/images/readme8_1.jpg)
![readme_10](https://s3.amazonaws.com/ourcart.platform.assets/images/readme9.jpg)
![readme_11](https://s3.amazonaws.com/ourcart.platform.assets/images/readme10.jpg)
![readme_12](https://s3.amazonaws.com/ourcart.platform.assets/images/readme11.jpg)
![readme_13](https://s3.amazonaws.com/ourcart.platform.assets/images/readme12.jpg)
![readme_14](https://s3.amazonaws.com/ourcart.platform.assets/images/readme13.jpg)
![readme_14](https://s3.amazonaws.com/ourcart.platform.assets/images/readme14.jpg)

