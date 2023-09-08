//
//  main.swift
//  upAndDown
//
//  Created by Minji  Kim on 9/5/23.
//  Copyright © 2023 MinjiKimSwiftUI. All rights reserved.
//

import Foundation

print("Hello, World!")

var computerChoice = Int.random(in: 1...100)

var myChoice: Int = 0


while true {
    var userInput = readLine()
    
    
    if let input = userInput {
        if let number = Int(input) {
            myChoice = number
        }
    }
    
    //print(myChoice)
    
    
    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("Bingo")
        break
    }
}

