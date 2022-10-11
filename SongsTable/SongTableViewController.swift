//
//  SongTableViewController.swift
//  SongsTable
//
//  Created by Apps2T on 6/10/22.
//

import UIKit

class SongTableViewController: UITableViewController {
    
    var categorySong = [CategorySong]()

    var songTitle: String = ""
    var songAutor: String = ""
    var songImage: UIImage? = nil
    var category: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categorySong[section].categorySongs?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell: SongCell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as! SongCell
        
        customCell.songTitle.text = categorySong[indexPath.section].categorySongs![indexPath.row].title
        customCell.songAutor.text = categorySong[indexPath.section].categorySongs![indexPath.row].autor
        
        customCell.songImage.image = passUrlToUIImage(urlData: categorySong[indexPath.section].categorySongs![indexPath.row].imageUrl)
        
        //customCell.songImage = UIImage.loadData()
        
        return customCell
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200.0
//    }
//    
    //Secciones
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        view.backgroundColor = .gray
        
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width - 15, height: 40))
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = categorySong[section].categoryName
        view.addSubview(label)
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return categorySong.count
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        songTitle = categorySong[indexPath.section].categorySongs![indexPath.row].title
        songAutor = categorySong[indexPath.section].categorySongs![indexPath.row].autor
        songImage = passUrlToUIImage(urlData: categorySong[indexPath.section].categorySongs![indexPath.row].imageUrl)
        category = indexPath.section
        performSegue(withIdentifier: "goToDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        (segue.destination as! DetailViewController).cellSongTitle = songTitle
        (segue.destination as! DetailViewController).cellSongAutor = songAutor
        (segue.destination as! DetailViewController).cellSongImage = songImage
        (segue.destination as! DetailViewController).category = category
    }
    
    func passUrlToUIImage(urlData: String) -> UIImage{
        
        let url = URL(string: urlData)
        let data = try? Data(contentsOf: url!)
        let loadedImage: UIImage = UIImage(data: data!)!
        return loadedImage
        
    }

}
