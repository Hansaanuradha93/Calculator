//
//  ViewController.swift
//  Auto Layout Calcultor
//
//  Created by Hansa Anuradha on 12/18/18.
//  Copyright © 2018 Hansa Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - Properties

    private var isFinishedTypingNumber : Bool = true
    
    // MARK: - IBOutlets

    @IBOutlet weak var displayLabel: UILabel!
    
    // MARK: - ViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // MARK: - IBActions

    // Triggers when numbers are pressed
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        if let numberValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                // Display the first number, the user types
                displayLabel.text = numberValue
                // User is not finished typing yet, so we set isFinishedTypingNumber property to false
                isFinishedTypingNumber = false
            } else {
                
                guard let currentDisplayValue = Double(displayLabel.text!) else { fatalError("Can not convert display label value to Double") }
                
                // Checks display text is Integer or Non-Integer
                let isInt = floor(currentDisplayValue) == currentDisplayValue
                
                // If current display text contains a Non Integer value, then stop this numberButtonPressed IBAction
                if !isInt {
                    return
                }
                
                // Display the numbers on the display label
                displayLabel.text?.append(numberValue)
                
            }
        }
        
    }
    
    // Triggers when calculate buttons are pressed
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        // User has finished typing numbers just now, so we set isFinishedTypingNumber property to true
        isFinishedTypingNumber = true
        
        // Convert whats in the display label to double value
        guard let number = Double(displayLabel.text!) else {
            fatalError("Can not convert display label text to Double")
        }
        
        // Do the basic calculation functions
        if let calculatorMethod = sender.currentTitle {
            
            if calculatorMethod == "AC" {
                displayLabel.text = "0"
            } else if calculatorMethod == "+/-" {
                displayLabel.text = "\(number * -1)"
            } else if calculatorMethod == "%" {
                displayLabel.text = "\(number * 0.01)"
            }
        }
        
    }
    
    
    
    
}

