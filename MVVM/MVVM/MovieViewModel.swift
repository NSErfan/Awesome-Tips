//
//  MovieViewModel.swift
//  MVVM
//
//  Created by Farhad on 2/6/18.
//  Copyright © 2018 Farhad. All rights reserved.
//

import Foundation

struct MovieViewModel {
    
    var movies = Dynamic([Movie]())
    
    func fetchMovies() {
        var values = [Movie]()
        
        values.append(Movie(name: "The Shawshank Redemption", imdbRate: "9.2"))
        values.append(Movie(name: "The Godfather", imdbRate: "9.2"))
        values.append(Movie(name: "The Godfather: Part II", imdbRate: "9.0"))
        values.append(Movie(name: "The Dark Knight", imdbRate: "9.0"))
        values.append(Movie(name: "12 Angry Men", imdbRate: "8.9"))
        values.append(Movie(name: "Schindler's List (1993)", imdbRate: "8.9"))
        
        movies.value = values
    }
}
