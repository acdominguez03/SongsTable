//
//  SongTableViewController.swift
//  SongsTable
//
//  Created by Apps2T on 6/10/22.
//

import UIKit

class SongTableViewController: UITableViewController {
    
    // MARK: - Table view data source

    var songTable = [
        Song(imageUrl: "https://images.genius.com/9048c26badaaec80a2c76eec25f73536.1000x1000x1.jpg", title: "Dancing with the dead", autor: "Powerwolf"),
        Song(imageUrl: "https://m.media-amazon.com/images/I/81JtvRjJkSL._SS500_.jpg", title: "Amaranthine", autor: "Amaranthe"),
        Song(imageUrl: "https://i.scdn.co/image/ab67616d0000b273457163bec7e8e4decf8c6375", title: "Psychosocial", autor: "Slipknot")
    ]
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songTable.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell: SongCell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as! SongCell
        
        customCell.songTitle.text = songTable[indexPath.row].getTitle()
        customCell.songAutor.text = songTable[indexPath.row].getAutor()
        
        let url = URL(string: songTable[indexPath.row].getImageUrl())
        let data = try? Data(contentsOf: url!)
        let loadedImage: UIImage = UIImage(data: data!)!
        customCell.songImage.image = loadedImage
        //customCell.songImage = UIImage.loadData()
        
        return customCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedObject = self.songTable[sourceIndexPath.row]
        songTable.remove(at: sourceIndexPath.row)
        songTable.insert(movedObject, at: destinationIndexPath.row)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true
    }

}
