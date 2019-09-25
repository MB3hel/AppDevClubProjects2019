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
        // Get first number as a float
        // Get second number as a float
        // Set result field text to sum as a string
        
        let num1Value = Float(num1Field.text ?? "") ?? 0.0
        let num2Value = Float(num2Field.text ?? "") ?? 0.0
        resultField.text = String(num1Value + num2Value)
    }
    
    @IBAction func subtractPressed(_ sender: Any) {
        let num1Value = Float(num1Field.text ?? "") ?? 0.0
        let num2Value = Float(num2Field.text ?? "") ?? 0.0
        resultField.text = String(num1Value - num2Value)
    }
    @IBAction func multiplyPressed(_ sender: Any) {
        let num1Value = Float(num1Field.text ?? "") ?? 0.0
        let num2Value = Float(num2Field.text ?? "") ?? 0.0
        resultField.text = String(num1Value * num2Value)
    }
    @IBAction func dividePressed(_ sender: Any) {
        let num1Value = Float(num1Field.text ?? "") ?? 0.0
        let num2Value = Float(num2Field.text ?? "") ?? 0.0
        resultField.text = String(num1Value / num2Value)
    }
    
}

