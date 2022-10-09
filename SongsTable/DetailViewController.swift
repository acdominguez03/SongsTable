//
//  DeatailViewController.swift
//  SongsTable
//
//  Created by Apps2T on 7/10/22.
//

import Foundation
import UIKit

class DetailViewController: UIViewController{
    
    var cellSongTitle: String? = nil
    var cellSongAutor: String? = nil
    var cellSongImage: UIImage? = nil
    
    @IBOutlet weak var songTitle: UILabel!
    
    @IBOutlet weak var songAutor: UILabel!
    
    @IBOutlet weak var songImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        songTitle?.text = cellSongTitle
        songAutor?.text = cellSongAutor
        songImage?.image = cellSongImage
    
    }
}
