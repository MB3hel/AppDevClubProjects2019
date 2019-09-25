//
//  ViewController.swift
//  SimpleCalculator2
//
//  Created by Marcus Behel on 9/24/19.
//  Copyright © 2019 Marcus Behel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var num1Field: UITextField!
    @IBOutlet weak var num2Field: UITextField!
    @IBOutlet weak var resultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addPressed(_ sender: Any){
        // Steps:
        // Get first number as a float
        // Get second number as a float
        // Set result field text to sum as a string
        
        
        // Explanation of Line 51
        // let num1Value = ...
        //     Create a constant (value won't change later) called num1Value equal to something.
        // num1Field.text ?? ""
        //     Get the text entered by the user. This can be nil (which is the same thing as no text)!
        //     The text is an optional string (meaning it can be nil). It could be unwrapped like shown below
        // num1Field.text!    <--- THIS IS BAD
        //     If text is nil though the app will crash!
        //     Instead by using '??' we provide an alternate value to use if
        //     the text is nil ( in this case an empty string)
        //     Next we convert that text (or default value) to a float
        // Float(num1Field.text ?? "")
        //     This returns an optional float (it will be nil if the string was not a valid float)
        //     If this is nil just use zero so
        // Float(num1Field.text ?? "") ?? 0.0
        //     Putting it all together:
        // let num1Value = Float(num1Field.text ?? "") ?? 0.0
        //     Create a constant called num1Value
        //     Its value will be the text of num1Field (using an empty string if nil) converted to a float
        //     If the float is nil (because the input string was not a valid float) use 0.0 as num1Value's value
        
        
        let num1Value = Float(num1Field.text ?? "") ?? 0.0
        let num2Value = Float(num2Field.text ?? "") ?? 0.0
        resultField.text = String(num1Value + num2Value)
    }
    
    @IBAction func subtractPressed(_ sender: Any) {
        // Steps:
        // Get first number as a float
        // Get second number as a float
        // Set result field text to difference as a string
        
        let num1Value = Float(num1Field.text ?? "") ?? 0.0
        let num2Value = Float(num2Field.text ?? "") ?? 0.0
        resultField.text = String(num1Value - num2Value)
    }
    @IBAction func multiplyPressed(_ sender: Any) {
        // Steps:
        // Get first number as a float
        // Get second number as a float
        // Set result field text to product as a string
        
        let num1Value = Float(num1Field.text ?? "") ?? 0.0
        let num2Value = Float(num2Field.text ?? "") ?? 0.0
        resultField.text = String(num1Value * num2Value)
    }
    @IBAction func dividePressed(_ sender: Any) {
        // Steps:
        // Get first number as a float
        // Get second number as a float
        // Set result field text to quotient as a string
        
        let num1Value = Float(num1Field.text ?? "") ?? 0.0
        let num2Value = Float(num2Field.text ?? "") ?? 0.0
        resultField.text = String(num1Value / num2Value)
    }
    
}

