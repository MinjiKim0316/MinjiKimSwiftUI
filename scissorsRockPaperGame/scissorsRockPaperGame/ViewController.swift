//
//  ViewController.swift
//  scissorsRockPaperGame
//
//  Created by Minji  Kim on 9/4/23.
//  Copyright © 2023 MinjiKimSwiftUI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    
    @IBOutlet weak var randomImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBOutlet weak var ranChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    
    var ranChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    var myChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1) upload ready images for first and second image views
        
        randomImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 2) upload "ready" text in the labels of first and second
        
        ranChoiceLabel.text = "Ready"
        myChoiceLabel.text = "Ready"
        
    }

    

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        
        // choose rock/scissors/paper and save its info
        // guard let title = sender.currentTitle else { return }
        
        let title = sender.currentTitle!
        print(title)
        
        switch title {
        case "Paper":
            myChoice = Rps.paper
        case "Scissors":
            myChoice = Rps.scissors
        case "Rock":
            myChoice = Rps.rock
        default:
            break
        }
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 1) upload random choice's image view
        // 2) upload what random choice selected on the label
        
        switch ranChoice {
        case Rps.rock:
            randomImageView.image = #imageLiteral(resourceName: "rock")
            ranChoiceLabel.text = "Rock"
        case Rps.paper:
            randomImageView.image = #imageLiteral(resourceName: "paper")
            ranChoiceLabel.text = "Paper"
        case Rps.scissors:
            randomImageView.image = #imageLiteral(resourceName: "scissors")
            ranChoiceLabel.text = "Scissors"
        }
        
        // 3) upload my choice's image view
        // 4) upload what I selected on the label
        
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "Rock"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "Paper"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "Scissors"
        }
        
        // 5) compare random choice and my choice and then decide and upload whether win or lose
        
        if ranChoice == myChoice {
            mainLabel.text = "Tie!"
        } else if ranChoice == .rock && myChoice == .paper {
            mainLabel.text = "Win! :)"
        } else if ranChoice == .paper && myChoice == .scissors {
            mainLabel.text = "Win! :)"
        } else if ranChoice == .scissors && myChoice == .rock {
            mainLabel.text = "Win! :)"
        } else {
            mainLabel.text = "Loss... :("
        }
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        // 1) random choice - go back to "ready" image again and upload it
        // 2) random choice - go back and upload "ready" text on the label again
        
        randomImageView.image = #imageLiteral(resourceName: "ready")
        ranChoiceLabel.text = "Ready"
        
        // 3) my choice - go back to "ready" image again and upload it
        // 4) my choice - go back and upload "ready" text on the label again
        
        myImageView.image = #imageLiteral(resourceName: "ready")
        myChoiceLabel.text = "Ready"
        
        // 5) main label - upload "select" or "play the game" again
        
        mainLabel.text = "Select"
        
        // 6) computer - select random rock/scissors/paper and save it
        
        ranChoice = Rps(rawValue: Int.random(in: 0...2))!
        
    }
    
    
}

