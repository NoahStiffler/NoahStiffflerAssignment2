//
//  ViewController.swift
//  NoahStifflerMadLib
//
//  Created by Noah Stiffler on 2/5/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var template : String = "Last [holiday] in [country], 1 in every [number] people who are omitted to the emergency room suffered from a [fruit] being forcibly lodged where it shouldn't have been. [exclamation]! What a deranged [holiday] present!"
    
    @IBOutlet weak var countryIn: UITextField!
    @IBOutlet weak var numberIn: UITextField!
    @IBOutlet weak var fruitIn: UITextField!
    @IBOutlet weak var exclamationIn: UITextField!
    @IBOutlet weak var holidayIn: UITextField!
    
    @IBOutlet weak var outputText: UITextView!
    
   
    @IBAction func goButton(_ sender: Any) {
        
        template = template.replacingOccurrences(of: "[country]", with: countryIn.text!)
        template = template.replacingOccurrences(of: "[number]", with: numberIn.text!)
        template = template.replacingOccurrences(of: "[fruit]", with: fruitIn.text!)
        template = template.replacingOccurrences(of: "[exclamation]", with: exclamationIn.text!)
        template = template.replacingOccurrences(of: "[holiday]", with: holidayIn.text!)
        
        outputText.text = template
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
