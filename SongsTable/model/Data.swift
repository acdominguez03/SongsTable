//
//  Song.swift
//  SongsTable
//
//  Created by Apps2T on 6/10/22.
//

import Foundation



class CategorySong{
    var categoryName: String?
    var categorySongs: [Song]?
         
    init(categoryName: String, categorySongs: [Song]) {
        self.categoryName = categoryName
        self.categorySongs = categorySongs
    }
}

class Song{
    
    var imageUrl: String = ""
    
    var title: String = ""
    
    var autor: String = ""
    
    init(imageUrl: String, title: String, autor: String) {
        self.imageUrl = imageUrl
        self.title = title
        self.autor = autor
    }
    
}
