//
//  SongTableViewController.swift
//  SongsTable
//
//  Created by Apps2T on 6/10/22.
//

import UIKit



class SongTableViewController: UITableViewController{
    
    private var tableViewPresenter: TableViewPresenter = TableViewPresenter(songService: SongService())
    
    init(tableViewPresenter: TableViewPresenter) {
        self.tableViewPresenter = tableViewPresenter
        self.tableViewPresenter.initSongs()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewPresenter.getSongsCountPerSection(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell: SongCell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as! SongCell
        
        customCell.songTitle.text = tableViewPresenter.getSongBySectionAndPosition(indexPath: indexPath).title
        customCell.songAutor.text = tableViewPresenter.getSongBySectionAndPosition(indexPath: indexPath).description
        
        customCell.songImage.image = UIImage(data: tableViewPresenter.passUrlToData(urlData: tableViewPresenter.getSongBySectionAndPosition(indexPath: indexPath).imageUrl))!
        
        customCell.songTitle.type = .continuous
        customCell.songTitle.speed = .duration(3.0)
        customCell.songTitle.animationCurve = .easeInOut
        customCell.songTitle.fadeLength = 10.0
        customCell.songTitle.trailingBuffer = 20.0
        
        return customCell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, 0, -20, 0)
        cell.layer.transform = rotationTransform
        cell.alpha = 0
        UIView.animate(withDuration: 0.75){
            cell.layer.transform = CATransform3DIdentity
            cell.alpha = 1.0
        }
    }
    
    //Secciones
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        view.backgroundColor = .gray
        
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width - 15, height: 40))
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = tableViewPresenter.getCategoryNameBySection(section: section)
        view.addSubview(label)
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewPresenter.getSongsCount()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewPresenter.getDataToDetail(indexPath: indexPath)
        let detailViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "DetailController") as? DetailViewController
        
        detailViewController!.detailPresenter.detailSong = tableViewPresenter.songDetail
        detailViewController!.detailPresenter.category = tableViewPresenter.categoryDetail
    
        self.navigationController?.pushViewController(detailViewController!, animated: true)
    }
    
    /*func setDataToDatabase(){
        var songService = SongService()
        var songArray = songService.getSongs()[4].categorySongs
        var songCategory = songService.getSongs()[4].categoryName!
    
        songArray!.forEach{ song in
            database.collection(songCategory).document(song.title).setData(
                [
                    "title": song.title,
                    "description": song.description,
                    "imageUrl": song.imageUrl
                ]
                
            )
        }
        
    }*/
    
}
