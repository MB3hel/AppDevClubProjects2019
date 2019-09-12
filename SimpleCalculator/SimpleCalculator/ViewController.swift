//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Marcus Behel on 9/11/19.
//  Copyright © 2019 Marcus Behel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// UI element outlets
    @IBOutlet weak var num1InputField: UITextField!
    @IBOutlet weak var num2InputField: UITextField!
    @IBOutlet weak var resultOutputField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // Button actions
    @IBAction func addButtonPressed(_ sender: Any) {
        
        // The text must be converted to (parsed as) a double (number with decimal)
        // The text value is an optional type
        // Force unwrapping (with ! could cause a crash if the text is nil)
        // The nil coalescing operator (??) unwraps if it is not nil, but uses the provided alternative if it is
        let num1 = Double(num1InputField.text ?? "")
        let num2 = Double(num2InputField.text ?? "")
        
        // These parsed doubles are optional as well. They could be nil. If they are do nothing.
        if(num1 == nil || num2 == nil){
            return // This exits the function
        }
        
        // Its safe to force unwap these. This code won't run if either is nil.
        let result = num1! + num2!
        // Have to convert back to a string
        resultOutputField.text = String(result)
    }
    
    @IBAction func subtractButtonPressed(_ sender: Any) {
        let num1 = Double(num1InputField.text ?? "")
        let num2 = Double(num2InputField.text ?? "")
        
        if(num1 == nil || num2 == nil){
            return
        }
        
        let result = num1! - num2!
        resultOutputField.text = String(result)
    }
    
    @IBAction func multiplyButtonPressed(_ sender: Any) {
        let num1 = Double(num1InputField.text ?? "")
        let num2 = Double(num2InputField.text ?? "")
        
        if(num1 == nil || num2 == nil){
            return
        }
        
        let result = num1! * num2!
        resultOutputField.text = String(result)
    }
    
    @IBAction func divideButtonPressed(_ sender: Any) {
        let num1 = Double(num1InputField.text ?? "")
        let num2 = Double(num2InputField.text ?? "")
        
        if(num1 == nil || num2 == nil){
            return
        }
        
        let result = num1! / num2!
        resultOutputField.text = String(result)
    }
    
}

