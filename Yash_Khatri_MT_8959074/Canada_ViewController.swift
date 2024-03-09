//
//  Canada.swift
//  Yash_Khatri_MT_8959074
//
//  Created by user239847 on 09/03/24.
//

import UIKit

// Provides city images
class cityImageProvider {
    static func getImage(for cityName: String) -> UIImage? {
        return UIImage(named: cityName.lowercased())
    }
}

class Canada_ViewController: UIViewController, UITextFieldDelegate {
    
    // Outlets for UI elements
    
    @IBOutlet weak var cityImages: UIImageView!
    @IBOutlet weak var cityName: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityName?.delegate = self
    }
    
    // Function to display city image based on input
    func displayCityImage(cityName: String) {
        if let cityImage = cityImageProvider.getImage(for: cityName) {
            cityImages.image = cityImage
            errorMessage.isHidden = true
            errorMessage.text = ""
        } else {
            cityImages.image = UIImage(named: "Canada")
            errorMessage.isHidden = false
            errorMessage.text = "City not found"
        }
    }
    
    
    
    // Action triggered when finding a city
    
    @IBAction func findMyCity(_ sender: UIButton) {
        if let cityName = cityName.text?.trimmingCharacters(in:.whitespacesAndNewlines) {
            displayCityImage(cityName: cityName)
            
        }
        
    }
}
