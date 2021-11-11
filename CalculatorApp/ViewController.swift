//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Suman Gurung on 08/11/2021.
//

enum MathOperator: String {
    case plus = "+"
    case minus = "-"
    case multiply = "X"
    case divide = "÷"
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func eraseButton(_ sender: Any) {
        if (displayLabel.text?.count ?? 0 > 0) {
            displayLabel.text?.removeLast()
        }
    }
    
    @IBAction func tapSeven(_ sender: Any) {
        
        displayLabel.text? += "7"
    }
    
    @IBAction func tapEight(_ sender: Any) {
        displayLabel.text? += "8"
    }
    
    @IBAction func tapNine(_ sender: Any) {
        displayLabel.text? += "9"
    }
    
    @IBAction func tapPlus(_ sender: Any) {
        if let _displayLabel = displayLabel.text {
            if _displayLabel.count > 0 && !_displayLabel.contains(MathOperator.plus.rawValue)
                && !_displayLabel.contains(MathOperator.minus.rawValue) && !_displayLabel.contains(MathOperator.multiply.rawValue)
                && !_displayLabel.contains(MathOperator.divide.rawValue) {
                displayLabel.text? += MathOperator.plus.rawValue
            }
        }
    }
    
    @IBAction func tapFour(_ sender: Any) {
        displayLabel.text? += "4"
    }
    
    @IBAction func tapFive(_ sender: Any) {
        displayLabel.text? += "5"
    }
    
    
    @IBAction func tapSix(_ sender: Any) {
        displayLabel.text? += "6"
    }
    
    @IBAction func tapMinus(_ sender: Any) {
        if let _displayLabel = displayLabel.text {
            if _displayLabel.count > 0 && !_displayLabel.contains(MathOperator.plus.rawValue)
                && !_displayLabel.contains(MathOperator.minus.rawValue) && !_displayLabel.contains(MathOperator.multiply.rawValue)
                && !_displayLabel.contains(MathOperator.divide.rawValue) {
                displayLabel.text? += MathOperator.minus.rawValue
            }
        }
    }
    
    @IBAction func tapOne(_ sender: Any) {
        displayLabel.text? += "1"
    }
    
    @IBAction func tapTwo(_ sender: Any) {
        displayLabel.text? += "2"
    }
    
    @IBAction func tapThree(_ sender: Any) {
        displayLabel.text? += "3"
    }
    
    @IBAction func tapMultiply(_ sender: Any) {
        if let _displayLabel = displayLabel.text {
            if _displayLabel.count > 0 && !_displayLabel.contains(MathOperator.plus.rawValue)
                && !_displayLabel.contains(MathOperator.minus.rawValue) && !_displayLabel.contains(MathOperator.multiply.rawValue)
                && !_displayLabel.contains(MathOperator.divide.rawValue) {
                displayLabel.text? += MathOperator.multiply.rawValue
            }
        }
    }
    
    @IBAction func tapAllClear(_ sender: Any) {
        if (displayLabel.text?.count ?? 0 > 0) {
            displayLabel.text?.removeAll()
        }
    }

    @IBAction func tapZero(_ sender: Any) {
        displayLabel.text? += "0"
    }
    
    @IBAction func tapDecimalPoint(_ sender: Any) {
        if let _displayLabel = displayLabel.text {
            if _displayLabel.count > 0 && _displayLabel.last != "+"
                && _displayLabel.last != "-" && _displayLabel.last != "X"
                && _displayLabel.last != "÷" && _displayLabel.last != "."{
                displayLabel.text? += "."
            }
        }
    }
    
    @IBAction func tapDivide(_ sender: Any) {
        if let _displayLabel = displayLabel.text {
            if _displayLabel.count > 0 && !_displayLabel.contains(MathOperator.plus.rawValue)
                && !_displayLabel.contains(MathOperator.minus.rawValue) && !_displayLabel.contains(MathOperator.multiply.rawValue)
                && !_displayLabel.contains(MathOperator.divide.rawValue) {
                displayLabel.text? += MathOperator.divide.rawValue
            }
        }
    }
    
    @IBAction func tapEqual(_ sender: Any) {
        let firstNum = getFirstNum()
        let secondNum = getSecondNum()
        let mathOpertor = getOperator()
        var answer:Double
        if mathOpertor == MathOperator.plus.rawValue {
            answer = Double(firstNum + secondNum)
        } else if mathOpertor == MathOperator.minus.rawValue {
            answer = Double(firstNum - secondNum)
        } else if mathOpertor == MathOperator.multiply.rawValue {
            answer = Double(firstNum * secondNum)
        } else if mathOpertor == MathOperator.divide.rawValue {
            answer = Double(firstNum / secondNum)
        } else {
            answer = 0
        }
        answerLabel.text = String(answer)
    }
    
    // store the displayLabel text in array of string using mathmatical symbol as delimitter
    func getFirstNum() -> Double {
        let delimiter = "+-X÷"
        var firstNum:String?
        if let _displayLabel = displayLabel.text {
            if _displayLabel.count > 0 && (_displayLabel.contains("+")
            || _displayLabel.contains("-") || _displayLabel.contains("X")
            || _displayLabel.contains("÷")) {
                let questionLabel = _displayLabel.components(separatedBy: CharacterSet(charactersIn: delimiter))
                firstNum = questionLabel[0]
            }
        }
        return Double(firstNum ?? "0") ?? 0
    }
    
    // store the displayLabel text in array of string using mathmatical symbol as delimitter
    func getSecondNum() -> Double {
        let delimiter = "+-X÷"
        var secondNum:String?
        if let _displayLabel = displayLabel.text {
            if _displayLabel.count > 0 && (_displayLabel.contains("+")
            || _displayLabel.contains("-") || _displayLabel.contains("X")
            || _displayLabel.contains("÷")) {
                let questionLabel = _displayLabel.components(separatedBy: CharacterSet(charactersIn: delimiter))
                secondNum = questionLabel[1]
            }
        }
        return Double(secondNum ?? "0") ?? 0
    }
    
    func getOperator() -> String {
        var operatorSymbol:String?
        if let _displayLabel = displayLabel.text {
            if _displayLabel.contains(MathOperator.plus.rawValue) {
                operatorSymbol = MathOperator.plus.rawValue
            } else if _displayLabel.contains(MathOperator.minus.rawValue){
                operatorSymbol = MathOperator.minus.rawValue
            } else if _displayLabel.contains(MathOperator.multiply.rawValue){
                operatorSymbol = MathOperator.multiply.rawValue
            } else if _displayLabel.contains(MathOperator.divide.rawValue){
                operatorSymbol = MathOperator.divide.rawValue
            }
        }
        return operatorSymbol ?? ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

