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
    
    init(pickerViewData: PickerViewData){
        self.pickerViewData = pickerViewData
    }

    func setPickerViewData() -> Int{
        pickerViewData.initPìckerViewData()
        return pickerViewData.getPickerViewData().count
    }
    
    func returnTitleForRowPickerView(row: Int) -> String{
        pickerViewData.getPickerViewData()[row]
    }
    
    func passUrlToData(urlData: String) -> Data{
        
        let url = URL(string: urlData)
        let data = try? Data(contentsOf: url!)
        return data!
        
    }
}
