//
//  DeatailViewController.swift
//  SongsTable
//
//  Created by Apps2T on 7/10/22.
//

import Foundation
import UIKit

class DetailViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    let detailPresenter: DetailPresenter = DetailPresenter(pickerViewData: PickerViewData())
    
    @IBOutlet weak var songTitle: UILabel!
    
    @IBOutlet weak var songDescription: UITextView!
    
    @IBOutlet weak var songImage: UIImageView!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailPresenter.initPickerViewData()
        
        songTitle.text = detailPresenter.getCellSongTitleValue()
        songDescription.text = detailPresenter.getCellSongAutorValue()
        songImage.image = UIImage(data: detailPresenter.passUrlToData(urlData: detailPresenter.getCellSongImageValue()))
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        title = "Detail"
        
        songImage.layer.cornerRadius = 15
        
        pickerView.selectRow(detailPresenter.getCategoryValue(), inComponent: 0, animated: false)
        pickerView.isUserInteractionEnabled = false
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return detailPresenter.getDataCount()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return detailPresenter.returnTitleForRowPickerView(row: row)
    }
    
}
