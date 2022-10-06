//
//  Song.swift
//  SongsTable
//
//  Created by Apps2T on 6/10/22.
//

import Foundation

class Song: SongProtocol{
    
    var imageUrl: String = ""
    
    var title: String = ""
    
    var autor: String = ""
    
    init(imageUrl: String, title: String, autor: String) {
        self.imageUrl = imageUrl;
        self.title = title;
        self.autor = autor;
    }
    
    func getImageUrl() -> String {
        return imageUrl
    }
    
    func getTitle() -> String {
        return title
    }
    
    func getAutor() -> String {
        return autor
    }
    
    func setTitle(giveTitle: String) {
        title = giveTitle
    }
    
    func setAutor(giveAutor: String) {
        autor = giveAutor
    }
    
    
}
