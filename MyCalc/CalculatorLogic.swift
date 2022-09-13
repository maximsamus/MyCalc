//
//  CalculatorLogic.swift
//  MyCalc
//
//  Created by Максим Самусь on 13.09.2022.
//

import Foundation


struct CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double {
        
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number * 0.01
        }
        return 0
    }
}
