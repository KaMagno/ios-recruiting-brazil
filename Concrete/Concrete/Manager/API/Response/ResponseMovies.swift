//
//  ResponsePopuplaMovies.swift
//  Concrete
//
//  Created by Kaique Magno Dos Santos on 15/11/18.
//  Copyright © 2018 Kaique Magno Dos Santos. All rights reserved.
//

import Foundation

class ResponseMovies: Decodable {
    
    let results:[Movie]
    let page:Int
    let totalPages:Int
    let totalResults:Int
    
    public init (results:[Movie], page:Int = 0, totalPages:Int = 0, totalResults:Int = 0) {
        self.results = results
        self.page = page
        self.totalPages = totalPages
        self.totalResults = totalResults
    }
}
