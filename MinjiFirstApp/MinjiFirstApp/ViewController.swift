//
//  ViewController.swift
//  MinjiFirstApp
//
//  Created by Minji  Kim on 8/30/23.
//  Copyright © 2023 MinjiKimSwiftUI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.text = "Hello World!"
        //mainLabel.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        //mainLabel.backgroundColor = UIColor.yellow
        
        //mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        myButton.backgroundColor = UIColor.yellow
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        
    }
    
    
    

}

