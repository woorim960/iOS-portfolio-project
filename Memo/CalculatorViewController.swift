import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet var lblNumberShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var newOperation = true
    
    func AddNumberToInput(number: String) {
        var textNumber = String(lblNumberShow.text!)
        
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        
        textNumber = textNumber + number
        lblNumberShow.text = textNumber
    }

    @IBAction func btn0(_ sender: UIButton) {
        AddNumberToInput(number: "0")
    }
    
    @IBAction func btn1(_ sender: UIButton) {
        AddNumberToInput(number: "1")
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        AddNumberToInput(number: "2")
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        AddNumberToInput(number: "3")
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        AddNumberToInput(number: "4")
    }
    
    @IBAction func btn5(_ sender: UIButton) {
        AddNumberToInput(number: "5")
    }
    
    @IBAction func btn6(_ sender: UIButton) {
        AddNumberToInput(number: "6")
    }
    @IBAction func btn7(_ sender: UIButton) {
        AddNumberToInput(number: "7")
    }
    
    @IBAction func btn8(_ sender: UIButton) {
        AddNumberToInput(number: "8")
    }
    
    @IBAction func btn9(_ sender: UIButton) {
        AddNumberToInput(number: "9")
    }
    
    @IBAction func btnDot(_ sender: UIButton) {
        AddNumberToInput(number: ".")
    }
    
    
    var op = "+"
    var number1 : Double?
    
    @IBAction func btnMul(_ sender: UIButton) {
        op = "*"
        number1 = Double(lblNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnEqual(_ sender: UIButton) {
        let number2 = Double(lblNumberShow.text!)
        var results : Double?
        
        switch op {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case "-":
            results = number1! - number2!
        case "+":
            results = number1! + number2!
        default:
            results = 0.0
        }
        
        lblNumberShow.text = String(results!)
        newOperation = true
    }
    
    @IBAction func btnDiv(_ sender: UIButton) {
        op = "/"
        number1 = Double(lblNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnSub(_ sender: UIButton) {
        op = "-"
        number1 = Double(lblNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        op = "+"
        number1 = Double(lblNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func btnAC(_ sender: UIButton) {
        lblNumberShow.text = "0"
        newOperation = true
    }
    var boolian = true
    
    @IBAction func btnMinus(_ sender: UIButton) {
        
            let number = Double(lblNumberShow.text!)
            var remove : Double?
            remove = number! * -1
            lblNumberShow.text = String(remove!)
    }
    
    @IBAction func btnPercent(_ sender: UIButton) {
        var number1 = Double(lblNumberShow.text!)
        number1 = number1!/100.0
        lblNumberShow.text = String(number1!)
        newOperation = true
    }
    
}

