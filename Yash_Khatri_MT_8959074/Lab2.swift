//
//  ViewController.swift
//  cassignment
//
//  Created by user239847 on 1/24/24.
//

import UIKit
import SwiftUI

class Lab2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
var count = 0
var step = 1
    
    
    @IBOutlet weak var first: UILabel!
    

    
    @IBAction func Plus(_ sender: UIButton) {
        count = count + step
        first.text = String(count)

    }
    
    
    @IBAction func Minus(_ sender: UIButton) {
        count = count - step
        first.text = String(count)
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        count = 0
        step = 1
        first.text = String(count)
    }

    
    
    @IBAction func step2(_ sender: UIButton) {
        step = 2
        first.text = String(count)
    }
    
    
}

