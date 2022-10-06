//
//  SongProtocol.swift
//  SongsTable
//
//  Created by Apps2T on 6/10/22.
//

import Foundation

protocol SongProtocol {
    var imageUrl: String{ get set}
    var title: String{ get set}
    var autor: String{ get set}
    
    func getImageUrl() -> String
    func getTitle() -> String
    func getAutor() -> String
    
    func setTitle(giveTitle: String)
    func setAutor(giveAutor: String)
    
}
