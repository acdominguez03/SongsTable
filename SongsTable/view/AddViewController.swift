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
    
    
    @IBOutlet weak var urlImage: UITextField!
    
    private let addSongPresenter: AddSongPresenter = AddSongPresenter(pickerViewData: PickerViewData(), songService: SongService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songImage.image = #imageLiteral(resourceName: "imageMountain")
        songImage.layer.masksToBounds = true
        songImage.layer.cornerRadius = 15
        songImage.layer.borderWidth = 3.0
        songImage.layer.cornerRadius = songImage.bounds.width / 2
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
        if (songTitle.text!.isEmpty || songDescription.text!.isEmpty){
            showToast(controller: self, message: "Fill all the gaps", seconds: 1)
        }else{
            addSongPresenter.addSong(imageUrl: urlImage.text ?? "", title: songTitle.text ?? "", description: songDescription.text ?? "", category: songCategorie.selectedRow(inComponent: 0))
            showToast(controller: self, message: "Element added", seconds: 1)
        }
    }
    
    @IBAction func addUrlToImage(_ sender: Any) {
        if(urlImage.text!.isEmpty){
            showToast(controller: self, message: "Please put a image url", seconds: 0.5)
        }else{
            songImage.image = UIImage(data: addSongPresenter.passUrlToData(urlData: urlImage.text!))
        }
        
    }
    
    func showToast(controller: UIViewController, message: String, seconds: Double){
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.view.backgroundColor = UIColor.black
        alert.view.alpha = 0.6
        alert.view.layer.cornerRadius = 15
        
        controller.present(alert, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds){
            alert.dismiss(animated: true)
        }
    }
}
