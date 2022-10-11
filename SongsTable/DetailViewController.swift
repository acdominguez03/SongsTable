//
//  DeatailViewController.swift
//  SongsTable
//
//  Created by Apps2T on 7/10/22.
//

import Foundation
import UIKit

class DetailViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var cellSongTitle: String? = nil
    var cellSongAutor: String? = nil
    var cellSongImage: UIImage? = nil
    var category: Int? = nil
    
    var pickerViewData: [String] = []
    
    @IBOutlet weak var songTitle: UILabel!
    
    @IBOutlet weak var songAutor: UILabel!
    
    @IBOutlet weak var songImage: UIImageView!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDataToPickerView()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
        pickerView.selectRow(category!, inComponent: 0, animated: false)
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewData.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return pickerViewData[row]
       }
    
    override func viewWillAppear(_ animated: Bool) {
        songTitle?.text = cellSongTitle
        songAutor?.text = cellSongAutor
        songImage?.image = cellSongImage
    
    }
    
    func addDataToPickerView(){
        pickerViewData = ["Metal", "Pop", "Rock","Funk", "Rap"]
    }
}
