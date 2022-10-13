//
//  AddViewController.swift
//  SongsTable
//
//  Created by Apps2T on 13/10/22.
//

import Foundation
import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var songImage: UIImageView!
    @IBOutlet weak var songTitle: UITextField!
    @IBOutlet weak var songDescription: UITextField!
    @IBOutlet weak var songCategorie: UIPickerView!
    
    private let addSongPresenter: AddSongPresenter = AddSongPresenter(pickerViewData: PickerViewData())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songImage.image = #imageLiteral(resourceName: "imageMountain")
        self.songCategorie.delegate = self
        self.songCategorie.dataSource = self
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return addSongPresenter.setPickerViewData()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return addSongPresenter.returnTitleForRowPickerView(row: row)
    }
    
    
    
    
    @IBAction func addNewSong(_ sender: Any) {
        if (songImage == nil || songTitle == nil || songDescription == nil || songCategorie == nil){
            
        }
        
    }
}
