//
//  FirstViewController.swift
//  kalkulator ocen iOS
//
//  Created by Rafał Rytel on 17/09/2020.
//  Copyright © 2020 Rafał Rytel. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var gradesNumber: UILabel!
    @IBOutlet weak var gradesSlider: UISlider!
    @IBOutlet weak var gradesAVG: UILabel!
    var sliderValue: Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradesNumber.text = "Liczba ocen: \(sliderValue)"
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        sliderValue = Int(sender.value)
        gradesNumber.text = "Liczba Ocen: \(sliderValue)"
    }
    

    @IBAction func goToSecondViewButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToSecondVC", sender: self)
    }
    
    
}
