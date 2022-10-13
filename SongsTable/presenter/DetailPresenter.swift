//
//  DetailPresenter.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 13/10/22.
//

import Foundation
import UIKit

class DetailPresenter{
    
    private let pickerViewData: PickerViewData
    
    var cellSongTitle: String? = nil
    var cellSongAutor: String? = nil
    var cellSongImage: UIImage? = nil
    var category: Int? = nil
    
    init(pickerViewData: PickerViewData){
        self.pickerViewData = pickerViewData
    }
    
    func addDataToPickerView() -> [String]{
        let pickerViewData: [String] = ["Metal", "Pop", "Rock","Funk", "Rap"]
        return pickerViewData
    }
    
    func returnTitleForRowPickerView(row: Int) -> String{
        pickerViewData.getPickerViewData()[row]
    }
    
    func getDataCount() -> Int{
        return pickerViewData.getPickerViewDataCount()
    }
    
    func initPickerViewData(){
        pickerViewData.initPìckerViewData()
    }
    
    func setValuesToCells(songTitle: UILabel, songAutor: UILabel, songImage: UIImageView){
        songTitle.text = cellSongTitle
        songAutor.text = cellSongAutor
        songImage.image = cellSongImage
    }
    
    func getCategoryValue() -> Int{
        return category!
    }
    
    func getCellSongTitleValue() -> String{
        return cellSongTitle!
    }
    
    func getCellSongAutorValue() -> String{
        return cellSongAutor!
    }
    
    func getCellSongImageValue() -> UIImage{
        return cellSongImage!
    }
}
