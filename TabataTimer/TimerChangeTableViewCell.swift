//
//  TimerChangeTableViewCell.swift
//  TabataTimer
//
//  Created by Nikhil Modi on 1/31/19.
//  Copyright © 2019 Nikhil Dhavale. All rights reserved.
//

import UIKit

class TimerChangeTableViewCell: UITableViewCell,UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var currentIntervalLabel: UILabel!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
      return  2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if let component = TimerComponents(rawValue: component){
            if component == .minutes {
                return 300
            }
            else {
                return 60
            }
        }
        return 0

    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?{
        if let component = TimerComponents(rawValue: component){
            if component == .minutes {
                let string = "\(row) min"
                return NSAttributedString(string: string, attributes: Fonts.whiteFont)
            }
            else {
                let string  = "\(row) sec"
                return NSAttributedString(string: string, attributes: Fonts.whiteFont)

            }
        }
        return nil
    }
}
