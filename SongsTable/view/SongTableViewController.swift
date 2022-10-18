//
//  SongTableViewController.swift
//  SongsTable
//
//  Created by Apps2T on 6/10/22.
//

import UIKit

class SongTableViewController: UITableViewController{
    
    
    var tableViewPresenter: TableViewPresenter = TableViewPresenter(songService: SongService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewPresenter.initSongs()
        tableViewPresenter.getDataForAdd(giveTableView: tableView, giveTableViewPresenter: tableViewPresenter)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewPresenter.getSongsCountPerSection(section: section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableViewPresenter.printCustomCell(indexPath: indexPath, tableView: tableView)
    }
    
    //Secciones
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        view.backgroundColor = .gray
        
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width - 15, height: 40))
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = tableViewPresenter.getSongs()[section].categoryName
        view.addSubview(label)
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewPresenter.getSongs().count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewPresenter.getDataToDetail(indexPath: indexPath)
        
        performSegue(withIdentifier: "goToDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        tableViewPresenter.sendDataToDetail(segue: segue)
    }
    
    
    @IBAction func addSong(_ sender: Any) {
        performSegue(withIdentifier: "goToAdd", sender: nil)
    }
    

    
}
