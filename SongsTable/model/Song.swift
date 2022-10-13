//
//  Song.swift
//  SongsTable
//
//  Created by Apps2T on 6/10/22.
//

import Foundation

class Song{
    
    var imageUrl: String = ""
    
    var title: String = ""
    
    var description: String = ""
    
    init(imageUrl: String, title: String, description: String) {
        self.imageUrl = imageUrl
        self.title = title
        self.description = description
    }
    
}




