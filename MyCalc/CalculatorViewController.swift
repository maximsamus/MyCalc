//
//  CalculatorViewController.swift
//  MyCalc
//
//  Created by Максим Самусь on 4.09.2022.
//

import UIKit

class CalculatorViewController: UIViewController {
        
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        guard let number = Double(displayLabel.text ?? "") else { return }
        
        switch sender.currentTitle {
        case "+/-": displayLabel.text = String(format: "%.0f", number * -1)
        case "AC": displayLabel.text = String(0)
        default: displayLabel.text = String(number / 100)
        }
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }
}



