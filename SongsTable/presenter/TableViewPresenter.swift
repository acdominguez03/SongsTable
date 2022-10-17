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
    
    private var tableView: UITableView!
    private var tableViewPresenter: TableViewPresenter!
    
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
        customCell.songAutor.text = getSongs()[indexPath.section].categorySongs![indexPath.row].description
        
        customCell.songImage.image = passUrlToUIImage(urlData: getSongs()[indexPath.section].categorySongs![indexPath.row].imageUrl)
        
        return customCell
    }
    
    func getDataToDetail(indexPath: IndexPath){
        songTitleDetail = getSongs()[indexPath.section].categorySongs![indexPath.row].title
        songAutorDetail = getSongs()[indexPath.section].categorySongs![indexPath.row].description
        songImageDetail = passUrlToUIImage(urlData: getSongs()[indexPath.section].categorySongs![indexPath.row].imageUrl)
        
        categoryDetail = indexPath.section
    }
    
    func getDataForAdd(giveTableView: UITableView, giveTableViewPresenter: TableViewPresenter){
        tableView = giveTableView
        tableViewPresenter = giveTableViewPresenter
    }
    
    func sendDataToDetail(segue: UIStoryboardSegue){
        
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
    }
    
    func addSong(imageUrl: String, title: String, description: String, category: Int){
        songService.addSong(imageUrl: imageUrl, title: title, description: description, category: category)
    }
}
