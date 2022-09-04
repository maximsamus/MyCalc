//
//  CalculatorViewController.swift
//  MyCalc
//
//  Created by Максим Самусь on 4.09.2022.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            displayLabel.text = numValue

        }
    }
    
    
}

