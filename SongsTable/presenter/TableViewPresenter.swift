//
//  TableViewPresenter.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 12/10/22.
//

import Foundation


class TableViewPresenter{
    
    let songService: SongService
    
    init(songService: SongService){
        self.songService = songService
    }
    
    var songDetail: Song = Song(imageUrl: "", title: "", description: "")
    
    var categoryDetail: Int = 0
    
    
    func initSongs(){
        songService.getSongsFromDB()
    }
    
    func getSongsCount() -> Int{
        return songService.getSongs().count
    }
    
    func getSongBySectionAndPosition(indexPath: IndexPath) -> Song{
        return songService.getSongs()[indexPath.section].categorySongs![indexPath.row]
    }
    
    func getCategoryNameBySection(section: Int) -> String{
        return songService.getSongs()[section].categoryName ?? ""
    }
    
    func getSongsCountPerSection(section: Int) -> Int{
        return songService.getSongs()[section].categorySongs?.count ?? 0
    }
    
    func passUrlToData(urlData: String) -> Data{
        
        let url = URL(string: urlData)
        let data = try? Data(contentsOf: url!)
        return data!
        
    }
    
    func getDataToDetail(indexPath: IndexPath){
        songDetail.title = getSongBySectionAndPosition(indexPath: indexPath).title
        songDetail.description = getSongBySectionAndPosition(indexPath: indexPath).description
        songDetail.imageUrl = getSongBySectionAndPosition(indexPath: indexPath).imageUrl
        
        categoryDetail = indexPath.section
    }
}
