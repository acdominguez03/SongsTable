//
//  CategorySong.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 13/10/22.
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
