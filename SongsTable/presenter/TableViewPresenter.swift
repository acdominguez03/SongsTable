//
//  TableViewPresenter.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 12/10/22.
//

import Foundation
import UIKit

class TableViewPresenter{
    private let songService: SongService
    
    private var songTitleDetail: String = ""
    private var songAutorDetail: String = ""
    private var songImageDetail: UIImage? = nil
    
    private var categoryDetail: Int = 0
    
    init(songService: SongService){
        self.songService = songService
    }
    
    func initSongs(){
        songService.initSongs()
    }
    func getSongs() -> [CategorySong]{
        return songService.getSongs()
    }
    
    func getSongsCountPerSection(section: Int) -> Int{
        return getSongs()[section].categorySongs?.count ?? 0
    }
    
    func passUrlToUIImage(urlData: String) -> UIImage{
        
        let url = URL(string: urlData)
        let data = try? Data(contentsOf: url!)
        let loadedImage: UIImage = UIImage(data: data!)!
        return loadedImage
        
    }
    
    func printCustomCell(indexPath: IndexPath, tableView: UITableView) -> UITableViewCell{
        
        let customCell: SongCell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as! SongCell
        
        customCell.songTitle.text = getSongs()[indexPath.section].categorySongs![indexPath.row].title
        customCell.songAutor.text = getSongs()[indexPath.section].categorySongs![indexPath.row].autor
        
        customCell.songImage.image = passUrlToUIImage(urlData: getSongs()[indexPath.section].categorySongs![indexPath.row].imageUrl)
        
        return customCell
    }
    
    func getDataToDetail(indexPath: IndexPath){
        songTitleDetail = getSongs()[indexPath.section].categorySongs![indexPath.row].title
        songAutorDetail = getSongs()[indexPath.section].categorySongs![indexPath.row].autor
        songImageDetail = passUrlToUIImage(urlData: getSongs()[indexPath.section].categorySongs![indexPath.row].imageUrl)
        
        categoryDetail = indexPath.section
    }
    
    func sendDataToDetail(segue: UIStoryboardSegue){
        (segue.destination as! DetailViewController).detailPresenter.cellSongTitle = songTitleDetail
        (segue.destination as! DetailViewController).detailPresenter.cellSongAutor = songAutorDetail
        (segue.destination as! DetailViewController).detailPresenter.cellSongImage = songImageDetail
        (segue.destination as! DetailViewController).detailPresenter.category = categoryDetail
    }
    
    
}
