//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Suman Gurung on 08/11/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    
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
            if _displayLabel.count > 0 && !_displayLabel.contains("+")
            && !_displayLabel.contains("-") && !_displayLabel.contains("X")
            && !_displayLabel.contains("÷"){
                displayLabel.text? += "+"
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
            if _displayLabel.count > 0 && !_displayLabel.contains("+")
            && !_displayLabel.contains("-") && !_displayLabel.contains("X")
            && !_displayLabel.contains("÷") {
                displayLabel.text? += "-"
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
            if _displayLabel.count > 0 && !_displayLabel.contains("+")
            && !_displayLabel.contains("-") && !_displayLabel.contains("X")
            && !_displayLabel.contains("÷") {
                displayLabel.text? += "÷"
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
            if _displayLabel.count > 0 && !_displayLabel.contains("+")
            && !_displayLabel.contains("-") && !_displayLabel.contains("X")
            && !_displayLabel.contains("÷") {
                displayLabel.text? += "÷"
            }
        }
    }
    
    @IBAction func tapEqual(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

