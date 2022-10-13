//
//  SongService.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 13/10/22.
//

import Foundation
class SongService{
    
    var categorySong = [CategorySong]()
    
    func initSongs(){
        categorySong.append(CategorySong.init(categoryName: "Metal", categorySongs: [
            Song(imageUrl: "https://images.genius.com/9048c26badaaec80a2c76eec25f73536.1000x1000x1.jpg", title: "Dancing with the dead", autor: "Powerwolf"),
            Song(imageUrl: "https://m.media-amazon.com/images/I/81JtvRjJkSL._SS500_.jpg", title: "Amaranthine", autor: "Amaranthe"),
            Song(imageUrl: "https://i.scdn.co/image/ab67616d0000b273457163bec7e8e4decf8c6375", title: "Psychosocial", autor: "Slipknot")]))
        
        categorySong.append(CategorySong.init(categoryName: "Pop", categorySongs: [
            Song(imageUrl: "https://i.scdn.co/image/ab67616d0000b273420c7ba982f6f92351fc0a2b", title: "Lágrimas Desordenadas", autor: "Melendi"),
            Song(imageUrl: "https://www.lahiguera.net/musicalia/artistas/estopa/disco/9905/tema/22979/estopa_camiseta_de_rokanrol-portada.jpg", title: "Camiseta de rokanrol", autor: "Estopa"),
            Song(imageUrl: "https://m.media-amazon.com/images/I/81JqSmiA5TL._SL1500_.jpg", title: "Antes de que cuente diez", autor: "Fito y Fitipaldis")]))
        
        categorySong.append(CategorySong.init(categoryName: "Rock", categorySongs: [
            Song(imageUrl: "https://m.media-amazon.com/images/I/91NuHgWC6cL._SL1500_.jpg", title: "Highway To Hell", autor: "AC/DC"),
            Song(imageUrl: "https://m.media-amazon.com/images/I/81j7xM-oijL._SL1400_.jpg", title: "Master of Puppets", autor: "Metallica"),
            Song(imageUrl: "https://m.media-amazon.com/images/I/717WquYEKmL._SS500_.jpg", title: "JungleLand", autor: "Bruce Springsteen")]))
        
        categorySong.append(CategorySong.init(categoryName: "Funk", categorySongs: [
            Song(imageUrl: "https://m.media-amazon.com/images/I/512KX5bp0eL.jpg", title: "Esos cuernos", autor: "O'funk'illo"),
            Song(imageUrl: "https://i.scdn.co/image/ab67616d0000b273887b7c596249f628db6c6473", title: "Celebration", autor: "Kool & the Gang"),
            Song(imageUrl: "https://i.ytimg.com/vi/ILN7hG4kUFg/hqdefault.jpg", title: "Low Rider", autor: "War")]))
        
        categorySong.append(CategorySong.init(categoryName: "Rap", categorySongs: [
            Song(imageUrl: "https://images.genius.com/95fc67e21593295cea1a4e1440c463ba.640x640x1.jpg", title: "Yemen", autor: "Kase 0"),
            Song(imageUrl: "https://images.genius.com/12b0502dd23c2136c84f80309623e8ed.1000x1000x1.jpg", title: "Rap", autor: "Kaze"),
            Song(imageUrl: "https://kaseo.es/wp-content/uploads/2016/08/vivir-para-contarlo-violadores-del-verso.jpg", title: "A las cosas por su nombre", autor: "Violadores del verso")]))
        
    }
    func getSongs() -> [CategorySong]{
        return categorySong
    }

}
