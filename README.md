# receipt-scanner-iOS-demo

## Concept
The Ourcart SDK provides a complete toolkit for seamless receipt capture and processing. It helps users easily upload high-quality receipts to the Ourcart API through three core components:
1. Camera Component (ReceiptScanner) - A visual interface with features to guide users in capturing quality receipt photos:
 - Edge detection with visual feedback
 - Real-time angle verification
 - Auto-capture with manual override option
 - Multi-snapshot support for long receipts (manual switching)
 - Customizable UI elements
 - Automatic toggle to manual scanning after a configurable delay
2. Cropping Component (Edge Detection & Cropping) - A non-visual module for intelligent image processing:
 - Automatic receipt detection in snapshots
 - Corner point identification for precise cropping
 - Support for long receipts where corners touch image edges
 - Receipt straightening with adjusted ratio output
3. Receipt API Component (ReceiptScannerUploader) - a non-visual module handling the backend communication:
 - Image optimization (resizing and compression)
 - Secure upload handling
 - Integration with Ourcart's backend processing

Clip showing the capabilities of the camera component:

https://github.com/user-attachments/assets/9b4b5e45-5c6c-4159-951f-d4666406cb4c



## Installation
  ### Swift Package Manager:
- #### Add the following URL: https://github.com/OurcartEng/receipt-scanner-iOS-demo .

## Quickstart

### Once you’ve added and linked the SDK, you can start using it in your project files.
- #### Import your framework like this:

```swift
import ReceiptScannerLibrary

    do {
        let config = try StandaloneScannerSettingsBuilder()
            .setIsProd(false) // Optional
            .setApiKey("YOUR_API_KEY")  // Required
            .setClientCountry("YOUR_CLIENT_COUNTRY_CODE)  // Required
            .setClientCode("YOUR_CLIENT_CODE")  // Required
            .setClientUserID("YOUR_CLIENT_USER_ID")  // Required
            .setShowCornerFrame(false)  // Optional
            .setNextBtnColor(.blue)  // Optional
            // Add any other desired setter calls here
            .build()
    
        let scannerViewController = ImageScannerStandaloneController(settings: config)
        scannerViewController.imageScannerDelegate = self
        present(scannerViewController, animated: true)
    
    } catch {
        print("❌ Error: \(error.localizedDescription)")
    }
    
    
    // MARK: - Delegate Methods
    
    func scannerController(_ scanner: ReceiptScannerLibrary.ImageScannerStandaloneController, didCompleteScanWith results: ReceiptScannerLibrary.ImageScannerStandaloneResults) {
        let images = results.images
        
        scanner.dismiss(animated: true)
    }
    
    func scannerControllerDidCancel(_ scanner: ReceiptScannerLibrary.ImageScannerStandaloneController) {
        scanner.dismiss(animated: true)
    }
    
    func scannerController(_ scanner: ReceiptScannerLibrary.ImageScannerStandaloneController, didEncounterError error: Error) {
        // Handle error if needed
    }
    
    func receiptScannerControllerDidTapOpenTutorial(_ scanner: ReceiptScannerLibrary.ImageScannerStandaloneController) {
        scanner.dismiss(animated: true)
    }
```

## ReceiptScanner documentation
`ReceiptScanner` have many attributes allowing you to change initial data, make customization, and react in parent app to user interaction in ReceiptScanner flow:

### 🔧 StandaloneScannerSettingsBuilder

### 📌 Required Parameters
These parameters must be set to initialize the scanner:

- **`setApiKey(_String_)`** – API key for Ourcart requests. Must match the country, environment, and client code. This key is provided by Ourcart.
- **`setClientCountry(_String_)`** – Country code for Ourcart requests. Provided by Ourcart.
- **`setClientCode(_String_)`** – Client code for Ourcart requests. Provided by Ourcart.
- **`setClientUserID(_String_)`** – A unique user identifier associated with receipts. It can be any string but should represent the current user. This helps prevent fraudulent activity and ensures data consistency.

### ⚙️ Optional Parameters
Additional methods to customize scanner behavior:

#### 🏗️ General Configuration
- **`setIsProd(_Bool_)`** – Set to `true` for the production environment, `false` for testing.
- **`setShowHelpIcon(_Bool_)`** – Enables or disables the help icon in the UI.
- **`setShowCornerFrame(_Bool_)`** – Enables or disables the corner frame when detecting receipts.
- **`setManualCaptureMode(_Bool_)`** – Enables or disables manual capture mode.
- **`setRetakeCaptureMode(_Bool_)`** – Enables or disables retake capture mode(manual capture mode enabled by default).
- **`setCloseIcon(_ icon: UIImage)`** – Sets a custom icon for the close button.
- **`setTorchOnIcon(_ icon: UIImage)`** – Sets a custom icon for the torch (flash) when it is on.
- **`setTorchOffIcon(_ icon: UIImage)`** – Sets a custom icon for the torch (flash) when it is off.
- **`setHelpIcon(_ icon: UIImage)`** – Sets a custom icon for the help button.
- **`setCornerFrameSwitchColor(_ color: UIColor)`** – Sets the color of the corner frame.
- **`setRectangleDetectorColor(_ color: UIColor)`** – Sets the color of the rectangle detector.
- **`setSwitchToManualModeTimer(_ time: TimeInterval)`** – Sets the time in seconds before switching to manual mode.

#### 🎨 UI Customization

##### 📌 Switch Icons (Mode Buttons)
- **`setSwitchIconsActiveModeBackgroundColor(_UIColor_)`** – Background color for active mode switch icon.
- **`setSwitchIconsActiveModeFontColor(_UIColor_)`** – Font color for active mode switch icon.
- **`setSwitchIconsInActiveModeFontColor(_UIColor_)`** – Font color for inactive mode switch icon.
- **`setSwitchIconsInactiveModeBackgroundColor(_UIColor_)`** – Background color for inactive mode switch icon.
- **`setSwitchIconsBackgroundColor(_UIColor_)`** – Background color for switch icons.
- **`setSwitchIconsFonts(_String_)`** – Custom font for switch icons.
- **`setSwitchIconsFontSize(_String_)`** – Font size for switch icons.

##### 🎯 Shutter Button
- **`setShutterBtnColorAutomaticCaptureMode(_UIColor_)`** – Color of the shutter button in automatic mode.
- **`setShutterBtnColorSpinningAnimationAutomaticCaptureMode(_UIColor_)`** – Color of the spinning animation in automatic mode.
- **`setShutterBtnColorSpinningDuringCaptureAutomaticCaptureMode(_UIColor_)`** – Color of the shutter button during capture in automatic mode.
- **`setShutterBtnColorManualCaptureMode(_UIColor_)`** – Color of the shutter button in manual mode.
- **`setShutterBtnColorSpinningAnimationManualCaptureMode(_UIColor_)`** – Color of the spinning animation in manual mode.
- **`setShutterBtnColorSpinningDuringCaptureManualCaptureMode(_UIColor_)`** – Color of the shutter button during capture in manual mode.
- **`setShutterBtnIconManualCaptureMode(_ icon: UIImage)`** – Sets a custom icon for manual capture mode.
- **`setShutterIconAutomaticCaptureMode(_ icon: UIImage)`** – Sets a custom icon for automatic capture mode.

##### ⏭️ Next Button
- **`setNextBtnColor(_UIColor_)`** – Background color of the next button.
- **`setNextBtnFontColor(_UIColor_)`** – Font color of the next button.
- **`setNextBtnFont(_String_)`** – Custom font for the next button.
- **`setNextBtnFontSize(_String_)`** – Font size of the next button.

##### 📸 Image Counter
- **`setImageCounterBackgroundColor(_UIColor_)`** – Background color of the image counter.
- **`setImageCounterFontColor(_UIColor_)`** – Font color of the image counter.
- **`setImageCounterFont(_String_)`** – Custom font for the image counter.
- **`setImageCounterFontSize(_String_)`** – Font size of the image counter.

##### 💬 Message Container
- **`setMessageContainerBackgroundColor(_UIColor_)`** – Background color of the message container.
- **`setMessageContainerFontColor(_UIColor_)`** – Font color of the message container.
- **`setMessageContainerFont(_String_)`** – Custom font for the message container.
- **`setMessageContainerFontSize(_String_)`** – Font size of the message container.

### 🔧 Delegates

ReceiptScanner provides delegate methods to handle user actions and results from the scanner.  
Implement these methods in your `UIViewController`:

- **`scannerController(_:didCompleteScanWith:)`**  
  ✅ Called when a scan is successfully completed. The scanned image(s) are returned in `results`.  
  _Use this method to retrieve and process scanned receipts._
  ```swift
  func scannerController(_ scanner: ReceiptScannerLibrary.ImageScannerStandaloneController, 
                         didCompleteScanWith results: ReceiptScannerLibrary.ImageScannerStandaloneResults) {
      // Handle scanned results
      scanner.dismiss(animated: true)
  }
- **`scannerControllerDidCancel(_:)`**  
  ✅ Called when the user cancels the scanning process. 
  _Use this method to handle the cancellation event and dismiss the scanner._
  ```swift
  func scannerController(_ scanner: ReceiptScannerLibrary.ImageScannerStandaloneController){
      scanner.dismiss(animated: true)
  }
- **`scannerController(_:didEncounterError:)`**  
  ✅ Called when an error occurs during scanning. 
  _Use this method to handle errors and display appropriate messages._
  ```swift
  func scannerController(_ scanner: ReceiptScannerLibrary.ImageScannerStandaloneController, 
                       didEncounterError error: Error){
      print("❌ Error encountered: \(error.localizedDescription)")
  }
- **`receiptScannerControllerDidTapOpenTutorial(_:)`**  
  ✅ Called when the user taps on the tutorial button. 
  _Use this method to navigate the user to the tutorial screen._
  ```swift
  func receiptScannerControllerDidTapOpenTutorial(_ scanner: ReceiptScannerLibrary.ImageScannerStandaloneController) {
          scanner.dismiss(animated: true)
  
          let tutorialVC = TutorialViewController()
          present(tutorialVC, animated: true)
  }

### 📤 ReceiptScannerUploader

`ReceiptScannerUploader` provides utility methods for uploading scanned receipts (images or PDFs) to the backend.

### 🚀 Upload Methods

- **Upload a Single Image**  
  ✅ This method uploads a single receipt image to the backend.
  ```swift
              do {
                  let config = try ReceiptScannerUploaderConfiguration(
                      apiKey: "YOUR_API_KEY",
                      clientCode: "YOUR_CLIENT_CODE",
                      clientUserID: "YOUR_CLIENT_USER_ID",
                      clientCountry: "YOUR_CLIENT_COUNTRY_CODE",
                      isProd: false // Set to true for production environment
                  )
      
                  ReceiptScannerUploader.configuration = config
      
                  ReceiptScannerUploader.sendImage(image, with: config) { result in
                      switch result {
                      case .success(let url):
                          print("✅ Image uploaded successfully: \(url)")
                      case .failure(let error):
                          self.imagePreviewView.showError(message: "Upload of image failed: \(error.localizedDescription)")
                      }
                  }
        
                } catch {
                    print("Configuration error: \(error.localizedDescription)")
                }
- **Upload Multiple Images**  
  ✅ This method uploads multiple receipt images to the backend.
  ```swift
              do {
                  let config = try ReceiptScannerUploaderConfiguration(
                      apiKey: "YOUR_API_KEY",
                      clientCode: "YOUR_CLIENT_CODE",
                      clientUserID: "YOUR_CLIENT_USER_ID",
                      clientCountry: "YOUR_CLIENT_COUNTRY_CODE",
                      isProd: false // Set to true for production environment
                  )
      
                  ReceiptScannerUploader.configuration = config
      
                  ReceiptScannerUploader.sendMultipleImages(images, with: config) { result in
                      switch result {
                      case .success(let urls):
                          print("✅ Images uploaded successfully: \(urls)")
                      case .failure(let error):
                          self.imagePreviewView.showError(message: "Upload of images failed: \(error.localizedDescription)")
                      }
                  }
        
                } catch {
                    print("Configuration error: \(error.localizedDescription)")
                }
- **Upload a PDF Receipt**  
  ✅ This method uploads a PDF receipt to the backend.
  ```swift
              do {
                  let config = try ReceiptScannerUploaderConfiguration(
                      apiKey: "YOUR_API_KEY",
                      clientCode: "YOUR_CLIENT_CODE",
                      clientUserID: "YOUR_CLIENT_USER_ID",
                      clientCountry: "YOUR_CLIENT_COUNTRY_CODE",
                      isProd: false // Set to true for production environment
                  )
      
                  ReceiptScannerUploader.configuration = config
      
                  ReceiptScannerUploader.sendPDF(pdf, with: config) { result in
                      switch result {
                      case .success(let urls):
                          print("✅ PDF uploaded successfully: \(urls)")
                      case .failure(let error):
                          self.imagePreviewView.showError(message: "Upload of pdf failed: \(error.localizedDescription)")
                      }
                  }
        
                } catch {
                    print("Configuration error: \(error.localizedDescription)")
                }

## ✂️Edge Detection & Cropping

`ReceiptScanner` provides powerful edge detection and cropping functionalities to help process receipts efficiently.

---

### 🖼️ `getEdgePointsData`

This method processes a single image and returns `EdgeData`, containing the detected edges of the receipt.

#### 📥 Input:
- `image (UIImage)` - The receipt image to analyze.

#### 📤 Output:
- `Quadrilateral?` - The detected edges of the receipt in the following order:
  1. **Top-left**
  2. **Top-right**
  3. **Bottom-left**
  4. **Bottom-right**

- If no receipt is detected, `nil` is returned.

#### ✅ Usage Example:
```swift
ImageScannerStandaloneController.getEdgePointsData(image: image) { quad in
    print("✅ Detected crop points: \(quad ?? nil)")
}
```

### ✂️ `cropImage`

This method crops a given image using the detected receipt edges.

#### 📥 Input:
- `image (UIImage)` - The original image to crop.
- `quad (Quadrilateral)` - The detected edges of the receipt.

#### 📤 Output:
- `UIImage?` - The cropped receipt image, or `nil` if the cropping fails.

#### ✅ Usage Example:
```swift
let croppedImage = ImageScannerStandaloneController.cropImage(using: quad, from: image) {
     // Handle croppedImage
}
```


## Customization of font:

Please add the font to your Info.plist and include that into your project.  Default font is `Poppins`

#### ✅ Usage Example:
```swift
setSwitchIconsFonts("Fredoka-Regular")
.....
// other font related customization
```

## Customization of text:
The SDK uses a built-in Localizable.strings file with keys as below.To override those, please create your own Localizable.strings with specified keys.
```xml
OURCART_adjust_angle: "The angle is incorrect. Hold your camera directly above the receipt."
OURCART_long_receipt: "Long Receipt"
OURCART_regular_receipt: "Regular Receipt"
OURCART_HOLD_STEADY: "Hold your camera, we are capturing"
OURCART_looking_for_receipts: "Looking for receipt"
OURCART_next: "Next"
OURCART_AUTO_MANUAL_ON: "No receipt found. Capture manually."
OURCART_receipt_out_of_rame: "Please position the receipt within the frame."
```
In case you want to have bold words inside paragraph, do it like this: 
```xml
"OURCART_final_screen_manual_review_sub_heading": "We couldn't process your receipt automatically.It will now go to <b>manual review</b>, which may take<b> up to 48 hours.</b>"
```
