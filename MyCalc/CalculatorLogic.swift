//
//  CalculatorLogic.swift
//  MyCalc
//
//  Created by Максим Самусь on 13.09.2022.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    private var intermediateCalculation: (number: Double, calcMethod: String)?
    
    private func performTwoNumCalculation(savedNumber: Double) -> Double? {
        
        if let calculateNumber = intermediateCalculation?.number,
           let calcMethod = intermediateCalculation?.calcMethod {
            
            switch calcMethod {
            case "+": return calculateNumber + savedNumber
            case "-": return calculateNumber - savedNumber
            case "×": return calculateNumber * savedNumber
            default: return calculateNumber / savedNumber
            }
        }
        return nil
    }
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let existingNumber = number {
            switch symbol {
            case "+/-":
                return existingNumber * -1
            case "AC":
                return 0
            case "%":
                return existingNumber * 0.01
            case "=":
                return performTwoNumCalculation(savedNumber: existingNumber)
            default:
                intermediateCalculation = (number: existingNumber, calcMethod: symbol)
            }
        }
        return nil
    }
}
