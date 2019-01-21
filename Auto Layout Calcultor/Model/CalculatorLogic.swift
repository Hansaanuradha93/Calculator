//
//  CalculatorLogic.swift
//  Auto Layout Calcultor
//
//  Created by Hansa Anuradha on 1/21/19.
//  Copyright © 2019 Hansa Anuradha. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number : Double?
    
    // Set value for number property
    mutating func setumber(_ number : Double) {
        self.number = number
    }
   
    // Do the basic calculation functions
    func calculate(symbol : String) -> Double? {
    
        if let n = number {
            if symbol == "AC" {
                return 0
            } else if symbol == "+/-" {
                return n * -1
            } else if symbol == "%" {
                return n * 0.01
            }
        }
        return nil
    }
    
    
}
