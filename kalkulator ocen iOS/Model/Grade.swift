//
//  Grade.swift
//  kalkulator ocen iOS
//
//  Created by Rafał Rytel on 23/09/2020.
//  Copyright © 2020 Rafał Rytel. All rights reserved.
//

import UIKit

class Grade: NSObject {
    var sliderValue: Int
    var title: String
    var grade: String
    
    init(sliderValue: Int, title: String, grade: String) {
        self.sliderValue = sliderValue
        self.title = title
        self.grade = grade
    }
}
