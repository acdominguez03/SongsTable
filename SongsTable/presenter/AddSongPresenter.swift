//
//  AddSongPresenter.swift
//  SongsTable
//
//  Created by Apps2T on 13/10/22.
//

import Foundation
import UIKit

class AddSongPresenter{
    
    private let pickerViewData: PickerViewData
    private let songService: SongService
    
    init(pickerViewData: PickerViewData, songService: SongService){
        self.pickerViewData = pickerViewData
        self.songService = songService
    }

    func setPickerViewData() -> Int{
        pickerViewData.initPìckerViewData()
        return pickerViewData.getPickerViewData().count
    }
    
    func returnTitleForRowPickerView(row: Int) -> String{
        pickerViewData.getPickerViewData()[row]
    }
    
    
    func addSong(imageUrl: String, title: String, description: String, category: Int){
        songService.addSong(imageUrl: imageUrl, title: title, description: description, category: category)
    }
    
    func passUrlToData(urlData: String) -> Data{
        
        let url = URL(string: urlData)
        let data = try? Data(contentsOf: url!)
        return data!
        
    }
}
