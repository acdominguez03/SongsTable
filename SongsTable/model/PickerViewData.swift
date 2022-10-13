//
//  PickerViewData.swift
//  SongsTable
//
//  Created by Ismael Cordón Domínguez on 13/10/22.
//

import Foundation
class PickerViewData{
    
    var pickerViewData: [String] = []
    
    func initPìckerViewData(){
        pickerViewData = ["Metal", "Pop", "Rock","Funk", "Rap"]
    }
    
    func getPickerViewData() -> [String]{
        return pickerViewData
    }
    
    func getPickerViewDataCount() -> Int{
        return pickerViewData.count
    }

}
