import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberField: UITextField!
    
    // The first value the user entered. If this is empty string no operation has been chosen yet
    var firstValue: String? = ""
    var operation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    /// Button actions
    @IBAction func clearPressed(_ sender: Any) {
        numberField.text = ""
    }
    
    @IBAction func dividePressed(_ sender: Any) {
        firstValue = numberField.text
        operation = "/"
        numberField.text = ""
    }
    
    @IBAction func multiplyPressed(_ sender: Any) {
        firstValue = numberField.text
        operation = "*"
        numberField.text = ""
    }
    
    @IBAction func subtractPressed(_ sender: Any) {
        if(numberField.text! == ""){
            // If subtract is presed before a number is entered treat it as a negative sign
            numberField.text = numberField.text! + "-"
        }else{
            // This is a subtract operation
            firstValue = numberField.text
            operation = "-"
            numberField.text = ""
        }
    }
    
    @IBAction func addPressed(_ sender: Any) {
        firstValue = numberField.text
        operation = "+"
        numberField.text = ""
    }
    
    @IBAction func equalsPressed(_ sender: Any) {
        if(firstValue == ""){
            // Exit because no operation was chosen yet
            return
        }
        
        let firstNum = Double(firstValue ?? "")
        let secondNum = Double(numberField.text ?? "")
        
        // Indicate that no operation has been chosen (for next time)
        firstValue = ""
        
        // Error if either number could not be parsed
        if(firstNum == nil || secondNum == nil){
            numberField.text = "ERROR"
            return
        }
        
        // Have two numbers. Perform an operation
        if(operation == "+"){
            numberField.text = String(firstNum! + secondNum!)
        }else if(operation == "-"){
            numberField.text = String(firstNum! - secondNum!)
        }else if(operation == "*"){
            numberField.text = String(firstNum! * secondNum!)
        }else if(operation == "/"){
            numberField.text = String(firstNum! / secondNum!)
        }else{
            numberField.text = "UNKNOWN OPERATION"
        }
    }
    
    @IBAction func decimalPressed(_ sender: Any) {
        // Make sure text is not nil
        if(numberField.text == nil){
            numberField.text = ""
        }
        // If there is no text entered yet
        if(!numberField.text!.contains(".")){
            numberField.text = numberField.text! + "."
        }
    }
    
    // This handles any number button
    @IBAction func numberPressed(_ sender: Any) {
        let button = sender as! UIButton
        numberField.text = numberField.text! + button.titleLabel!.text!
    }
    
}

