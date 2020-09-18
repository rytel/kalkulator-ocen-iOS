//
//  TableViewCell.swift
//  kalkulator ocen iOS
//
//  Created by Rafał Rytel on 18/09/2020.
//  Copyright © 2020 Rafał Rytel. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var gradeNumber: UILabel!
    @IBOutlet weak var gradeSlider: UISlider!
    @IBOutlet weak var gradeValue: UILabel!
    var sliderValue: Int = 5
    override func awakeFromNib() {
        super.awakeFromNib()
        gradeSlider.value = 5
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    @IBAction func setGrade(_ sender: UISlider) {
        sliderValue = Int(sender.value)
        gradeValue.text = "\(sliderValue)"
        
        
    }
    
    
}
