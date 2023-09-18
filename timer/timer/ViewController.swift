//
//  ViewController.swift
//  timer
//
//  Created by Minji  Kim on 9/18/23.
//  Copyright © 2023 MinjiKimSwiftUI. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    weak var timer: Timer?
    
    var number: Int = 0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        
    }

    func setUpUI() {
        mainLabel.text = "Please Select Seconds"
        
        // set up slider to be located in the middle
        slider.value = 0.5
    }
    
  
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        // set up mainLabel's text using slider's value
        let seconds = Int(slider.value * 60)
        print(seconds)
        mainLabel.text = "\(seconds) s"
        number = seconds
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        // work per 1sec
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] _ in
            
            // code - repeat
            if self.number > 0 {
                self.number -= 1
                
                // subtract slider
                self.slider.value = Float(self.number)/Float(60)
                
                //do the mainLabel again
                self.mainLabel.text = "\(self.number) s"
            } else {
                self.number = 0
                self.mainLabel.text = "Please Select Seconds"
                self.timer?.invalidate()
                
                // play sound
            AudioServicesPlayAlertSound(SystemSoundID(1322))
            }
        }
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        // set up everything again (set up slider to be located in the middle)
        mainLabel.text = "Please Select Seconds"
        slider.value = 0.5
        number = 0
        timer?.invalidate()
        
    }
    

}

