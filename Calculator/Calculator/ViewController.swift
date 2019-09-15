import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    /// Button actions
    @IBAction func clearPressed(_ sender: Any) {
        numberField.text = ""
    }
    
    @IBAction func dividePressed(_ sender: Any) {
    }
    
    @IBAction func multiplyPressed(_ sender: Any) {
    }
    
    @IBAction func subtractPressed(_ sender: Any) {
    }
    
    @IBAction func addPressed(_ sender: Any) {
    }
    
    @IBAction func equalsPressed(_ sender: Any) {
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

