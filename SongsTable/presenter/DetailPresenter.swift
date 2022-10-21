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
    
    var detailSong: Song = Song(imageUrl: "", title: "", description: "")
    var category: Int = 0
    
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
   
    func getCategoryValue() -> Int{
        return category
    }
    
    
    func getCellSongTitleValue() -> String{
        return detailSong.title
    }
    
    func getCellSongAutorValue() -> String{
        return detailSong.description
    }
    
    func getCellSongImageValue() -> String{
        return detailSong.imageUrl
    }
    
}
