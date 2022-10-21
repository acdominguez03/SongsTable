//
//  DetailPresenter.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 13/10/22.
//

import Foundation

class DetailPresenter{
    
    private let pickerViewData: PickerViewData
    
    init(pickerViewData: PickerViewData) {
        self.pickerViewData = pickerViewData
    }
    
    var detailSong: Song
    var category: Int
    
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
    
    func passUrlToData(urlData: String) -> Data{
        
        let url = URL(string: urlData)
        let data = try? Data(contentsOf: url!)
        return data!
        
    }
    
    /*
    func setValuesToCells(songTitle: UILabel, songDescription: UITextView, songImage: UIImageView){
        
    }
    */
    func getCategoryValue() -> Int{
        return category
    }
    /*
    func getCellSongTitleValue() -> String{
        return cellSongTitle!
    }
    
    func getCellSongAutorValue() -> String{
        return cellSongAutor!
    }
    
    func getCellSongImageValue() -> UIImage{
        return cellSongImage!
    }
     */
}
