//
//  Movies.swift
//  buyFilm
//
//  Created by Mehmet Arıkan on 18.07.2022.
//

import Foundation

class Movies{
    
    var movieId: Int?
    var movieTitle: String?
    var movieImageName: String?
    var moviePrice: Double?
    
    init(){
        
    }
    
    init(movieId: Int, movieTitle: String, movieImageName: String, moviePrice: Double){
        
        self.movieId = movieId
        self.movieTitle = movieTitle
        self.movieImageName = movieImageName
        self.moviePrice = moviePrice
        
        
        
    }
    
}
