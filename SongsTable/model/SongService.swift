//
//  SongService.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 13/10/22.
//

import Foundation
import FirebaseFirestore
class SongService{
    
    var categorySong = [CategorySong]()
    
    private let database = Firestore.firestore()
    
    init(){
        getSongsFromDB()
    }

    func getSongs() -> [CategorySong]{
        return categorySong
    }
    
    func addSong(imageUrl: String, title: String, description: String, category: Int){
        database.collection(getBandName(bandGenre: category)).document(title).setData(
            [
                "imageUrl": imageUrl,
                "title": title,
                "description": description
            ]
        )
    }
    
    func getSongsFromDB(){
        for position in 0...4{
            database.collection(getBandNameForDB(bandGenre: position)).getDocuments(){
                (querySnapshot, error) in
                if let error = error {
                    print("Error getting documents: \(error)")
                } else {
                    var songs: [Song] = []
                    songs = querySnapshot?.documents.map { song in
                        return Song(imageUrl: song["imageUrl"] as? String ?? "", title: song["title"] as? String ?? "", description: song["description"] as? String ?? "")
                    } as! [Song]
                    self.categorySong.append(CategorySong(categoryName: self.getBandNameForDB(bandGenre: position), categorySongs: songs))
                }
            }
        }
        
    }
    
    func getBandName(bandGenre: Int) -> String{
        switch bandGenre {
        case 0:
            return "Metal"
        case 1:
            return "Pop"
        case 2:
            return "Rock"
        case 3:
            return "Funk"
        case 4:
            return "Rap"
        default:
            return ""
        }
    }
    
    func getBandNameForDB(bandGenre: Int) -> String{
        switch bandGenre {
        case 0:
            return "Rap"
        case 1:
            return "Funk"
        case 2:
            return "Rock"
        case 3:
            return "Pop"
        case 4:
            return "Metal"
        default:
            return ""
        }
    }

}
