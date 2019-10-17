//
//  ViewController.swift
//  Calculator2
//
//  Created by Marcus Behel on 10/15/19.
//  Copyright © 2019 Marcus Behel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Operation {
        case None, Addition, Subtraction, Multiplication, Division
    }
    
    @IBOutlet weak var numberField: UITextField!
    
    var firstNum: String? = ""
    var operation = Operation.None
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /**
     Perform an operation with the stored firstNum and the value in the numberField.
     Returns the result of the operation as a string.
     */
    func doOperation() -> String {
        let secondNum = numberField.text
        
        let num1: Float? = Float(firstNum ?? "")
        let num2: Float? = Float(secondNum ?? "")
        
        if(num1 == nil || num2 == nil){
            return "ERROR" // This should never happen, but just in case
        }
        
        switch operation{
        case .Addition:
            return String(num1! + num2!)
        case .Subtraction:
            return String(num1! - num2!)
        case .Multiplication:
            return String(num1! * num2!)
        case .Division:
            return String(num1! / num2!)
        case .None:
            break;
        }
        return "ERROR" // This should never happen, but just in case
    }
    
    /**
     Setup to perform division operation (run when divide button pressed)
     */
    @IBAction func doDivision(_ sender: Any) {
        if(numberField.text == nil || numberField.text == ""){
            // If there is no text do not perform an operation
            return
        }
        
        if(operation != .None){
            // Already have one operation. Complete it first. Use that as the new first number and switch operations
            firstNum = doOperation()
        }else{
            firstNum = numberField.text
        }
        
        numberField.text = ""
        operation = .Division
    }
    
    /**
    Setup to perform multiplication operation (run when multiply button pressed)
    */
    @IBAction func doMultiplication(_ sender: Any) {
        if(numberField.text == nil || numberField.text == ""){
            // If there is no text do not perform an operation
            return
        }
        
        if(operation != .None){
            // Already have one operation. Complete it first. Use that as the new first number and switch operations
            firstNum = doOperation()
        }else{
            firstNum = numberField.text
        }
        
        numberField.text = ""
        operation = .Multiplication
    }
    
    /**
    Setup to perform subtraction operation (run when subtract button pressed)
    This acts as a negative sign if there is nothing in the numberField yet
    */
    @IBAction func doSubtraction(_ sender: Any) {
        if(numberField.text == nil || numberField.text == ""){
            // If there is no text do not perform an operation
            return
        }
        
        if(operation != .None){
            // Already have one operation. Complete it first. Use that as the new first number and switch operations
            firstNum = doOperation()
        }else{
            firstNum = numberField.text
        }
        
        numberField.text = ""
        operation = .Subtraction
    }
    
    /**
    Setup to perform addition operation (run when add button pressed)
    */
    @IBAction func doAddition(_ sender: Any) {
        if(numberField.text == nil || numberField.text == ""){
            // If there is no text do not perform an operation
            return
        }
        
        if(operation != .None){
            // Already have one operation. Complete it first. Use that as the new first number and switch operations
            firstNum = doOperation()
        }else{
            firstNum = numberField.text
        }
        
        numberField.text = ""
        operation = .Addition
    }
    
    @IBAction func clearScreen(_ sender: Any) {
        numberField.text = ""
    }
    
    @IBAction func showResult(_ sender: Any) {
        
        if(operation == .None || numberField.text == nil || numberField.text == ""){
            // If equals is pressed without an operation or without a second number do nothing
            return
        }
        
        numberField.text = doOperation()
        
        // Clear first num and operation
        firstNum = ""
        operation = .None
    }
    
    /**
     Handle when the decimal button is pressed
     Only allows one decimal in the number field at any given time
     */
    @IBAction func handleDecimal(_ sender: Any) {
        if(!(numberField.text ?? "").contains(".")){
            numberField.text = (numberField.text ?? "") + "."
        }
    }
    
    
    /**
     Action handler for any number button (0 to 9)
     Gets the character on the button and appends it to the end of the text in numberField
     */
    @IBAction func numberButtonPressed(_ sender: Any) {
        let button = sender as! UIButton
        let char = button.titleLabel!.text!
        
        // Do not add leading zeros
        if(char == "0" && (numberField.text == "" || numberField.text == nil)){
            return;
        }
        
        numberField.text = (numberField.text ?? "") + char
    }
    
}

