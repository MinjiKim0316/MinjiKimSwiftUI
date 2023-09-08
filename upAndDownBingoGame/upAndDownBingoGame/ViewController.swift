//
//  ViewController.swift
//  upAndDownBingoGame
//
//  Created by Minji  Kim on 9/5/23.
//  Copyright © 2023 MinjiKimSwiftUI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var comNumber = Int.random(in: 1...10)
    
    //var myNumber: Int = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // 1) mainLabel: "Please Select"
        
        mainLabel.text = "Please Select"
        
        // 2) numberLabel: ""
        
        numberLabel.text = ""
        
    }

    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        // 1) bring a number of button
        
        guard let numString = sender.currentTitle else { return }
        
        // 2) make numberLabel be changed by a number selected
        
        numberLabel.text = numString
        
        // 3) save the number I selected to the var (optional)
        //guard let num = Int(numString) else { return }
        //myNumber = num
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        
        guard let myNumString = numberLabel.text, let myNumber = Int(myNumString) else { return }
        
        //guard let myNumber = Int(myNumString) else { return }
        
        
        // 1) compare computer's number or the number I selected and then upload whether Up/Down or bingo (mainLabel)
        
        if comNumber > myNumber {
            mainLabel.text = "Up ↑"
        } else if comNumber < myNumber {
            mainLabel.text = "Down ↓"
        } else {
            mainLabel.text = "Bingo!😊"
        }
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        // 1) mainLabel: "Please Select"
        
        mainLabel.text = "Please Select"
        
        // 2) numberLabel: ""
        
        numberLabel.text = ""
        
        // 3) make computer's random number be selected again
        
        comNumber = Int.random(in: 1...10)
        
    }
    
    
    

}

