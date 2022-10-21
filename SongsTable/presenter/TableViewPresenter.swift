//
//  TableViewPresenter.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 12/10/22.
//

import Foundation

class TableViewPresenter{
    
    
    private let songService: SongService
    
    var songDetail: Song
    
    var categoryDetail: Int = 0
    
    init(songService: SongService, songDetail: Song, categoryDetail: Int) {
        self.songService = songService
        self.songDetail = songDetail
        self.categoryDetail = categoryDetail
    }
    
    func initSongs(){
        songService.initSongs()
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
    
    /*func sendDataToDetail(segue: UIStoryboardSegue){
        
        if let destination = segue.destination as? DetailViewController{
            destination.detailPresenter.cellSongTitle = songTitleDetail
            destination.detailPresenter.cellSongAutor = songAutorDetail
            destination.detailPresenter.cellSongImage = songImageDetail
            destination.detailPresenter.category = categoryDetail
        }
        
        if let destination = segue.destination as? AddViewController{
            destination.tableView = tableView
            destination.tableViewPresenter = tableViewPresenter
        }
    }*/
    
    func addSong(imageUrl: String, title: String, description: String, category: Int){
        songService.addSong(imageUrl: imageUrl, title: title, description: description, category: category)
    }
}
