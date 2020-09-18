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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        gradeSlider.value = 5
    }
    
}
