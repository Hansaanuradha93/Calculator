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
                // Display the numbers on the display label
                displayLabel.text?.append(numberValue)
            }
        }
        
    }
    
    // Triggers when calculate buttons are pressed
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        // User has finished typing numbers just now, so we set isFinishedTypingNumber property to true
        isFinishedTypingNumber = true
    }
    
    
    
    
}

