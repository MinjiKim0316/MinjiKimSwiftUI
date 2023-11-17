//
//  DataManager.swift
//  TableView
//
//  Created by Minji  Kim on 11/15/23.
//  Copyright © 2023 MinjiKimSwiftUI. All rights reserved.
//

import UIKit

class DataManager {
    
    var movieDataArray: [Movie] = []
    
    func makeMovieData() {
        movieDataArray = [
            Movie(movieImage: UIImage(named: "batman.png"), movieName: "Batman", movieDescription: "New Batman is Coming Soon!"),
            Movie(movieImage: UIImage(named: "captain.png"), movieName: "Captain America", movieDescription: "How Did Captain America Become A Captain?"),
            Movie(movieImage: UIImage(named: "ironman.png"), movieName: "Ironman", movieDescription: "Ironman is Back?!"),
            Movie(movieImage: UIImage(named: "thor.png"), movieName: "Thor", movieDescription: "Save My Planet!"),
            Movie(movieImage: UIImage(named: "hulk.png"), movieName: "Hulk", movieDescription: "How Did The Hulk Get His Powers?"),
            Movie(movieImage: UIImage(named: "spiderman.png"), movieName: "Spiderman", movieDescription: "How Did Peter Parker Become The Spiderman?"),
            Movie(movieImage: UIImage(named: "blackpanther.png"), movieName: "Black Panther", movieDescription: "The Real History Behind the Black Panther!"),
            Movie(movieImage: UIImage(named: "doctorstrange.png"), movieName: "Doctor Strange", movieDescription: "Doctor Strange: The Beginning"),
            Movie(movieImage: UIImage(named: "guardians.png"), movieName: "Guardians of the Galaxy", movieDescription: "Guardians of the Galaxy Vol.3")
        ]
        
    }
    
    func getMovieData() -> [Movie] {
        return movieDataArray
    }
    
    func updateMovieData() {
        
        let movie = Movie(movieImage: UIImage(named: "spiderman2.png"), movieName: "Spider-Man", movieDescription: "Spider-Man: Far From Home")
        movieDataArray.append(movie)
        
    }

}
