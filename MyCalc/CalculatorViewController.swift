//
//  CalculatorViewController.swift
//  MyCalc
//
//  Created by Максим Самусь on 4.09.2022.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var calculator = CalculatorLogic()
    private var isFinishedTypingNumber = true
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else { fatalError("fatalError") }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        calculator.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            guard let result = calculator.calculate(symbol: calcMethod) else { return }
            displayValue = result
        }
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
}



