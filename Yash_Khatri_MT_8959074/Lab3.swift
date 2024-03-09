//
//  ViewController.swift
//  assignment 2
//
//  Created by Yash Khatri on 2024-01-29.
//

import UIKit

class Lab3:
                            
    UIViewController {
    
  
    
    @IBOutlet weak var first: UITextField!
   
    
    @IBOutlet weak var last: UITextField!
  
    
    @IBOutlet weak var age: UITextField!
    
    
    
   
    @IBOutlet weak var country: UITextField!
    
    
    @IBOutlet weak var meso: UILabel!
    
    @IBOutlet weak var Submit: UIButton!

    
    
    @IBAction func btnAdd(_ sender: Any) {
        let First = first.text
        let Last = last.text
        let Country = country.text
        let Age = age.text
        if(First != "" || Last != "")
        {
            txtView.text = "Your Name: " + (First ?? "") + " " + (Last ?? "") + "\n"
        }
        if(Country != "")
        {
            txtView.text! += "Country: " + (Country ?? "") + "\n"
        }
        if(Age != "")
        {
            txtView.text! += "Age: " + (Age ?? "")
        }
    }
    
    
    @IBAction func btnSubmit(_ sender: Any) {
        let First = first.text
        let Last = last.text
        let Country = country.text
        let Age = age.text
        meso.text = ""
        if(First != "" && Last != "" && Country != "" && Age != ""){
            Submit.setTitle("Data Submitted", for: .normal)
            Submit.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 19)
        }else{
            var count:Int = 0
            if(First == "")
            {
                txtView.text = "First name "
                count = 1
            }
            if(Last == "")
            {
                txtView.text! += "Second name "
                count = 1
            }
            if(Country == "")
            {
                txtView.text! += "Country "
                count = 1
            }
            if(Age == "")
            {
                txtView.text! += "Age "
                count = 1
            }
            if(count == 1){
                meso.text! += " is missing."
                meso.textColor = UIColor.red
            }
        }
    }
    
    
    
    @IBAction func btnClear(_ sender: Any) {
        first.text = ""
        last.text = ""
        country.text = ""
        age.text = ""
        txtView.text = ""
        meso.text = ""
        Submit.setTitle("Submit", for: .normal)
        Submit.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 19)
    }
  
    
    @IBOutlet weak var txtView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
