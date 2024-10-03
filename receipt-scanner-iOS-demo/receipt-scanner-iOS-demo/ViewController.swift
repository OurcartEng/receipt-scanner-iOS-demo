//
//  ViewController.swift
//  receipt-scanner-iOS-demo
//
//  Created by Shpetim Hoxha on 3.10.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var openReceiptScanner: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openReceiptScanner.addTarget(self, action: #selector(openCameraTapped), for: .touchUpInside)
    }
    
    @IBAction func openCameraTapped(_ sender: UIButton) {
        // Initialize ReceiptScannerController with required parameters
        let scannerVC = ReceiptScannerController(
            isProd: false,
            apiKey: "YOUR_API_KEY",
            clientCountry: "US",
            clientCode: "ME",
            clientUserID: "abc123",
            primaryColor: .red,
            textColor: .black,
            primaryBackgroundColor: .gray,
            textActionButtonColor: .white,
            initialScreenHeading: "START SCAN",
            initalScreenSubHeading: "Snap your paper receipt or upload digital receipt file...",
            finalScreenHeading: "UPLOAD COMPLETED!",
            finalScreenSubHeading: "You will be notified once your receipt is valid!!.."
        )
        
        // Present the scanner
        scannerVC.modalPresentationStyle = .fullScreen
        present(scannerVC, animated: true)
    }


}

