//
//  SecondViewController.swift
//  kalkulator ocen iOS
//
//  Created by Rafał Rytel on 17/09/2020.
//  Copyright © 2020 Rafał Rytel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var gradesNumber: Int?
    var gradeArray: [Grade] = []
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var gradesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        gradesTableView.dataSource = self
        for i in 1...gradesNumber! {
            gradeArray.append(Grade(sliderValue: 5, title: "Ocena \(i)", grade: "5"))
        }
        gradesTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        var avg = 0.0
        for i in gradeArray {
            avg += Double(i.grade)!
        }
        avg /= Double(gradesNumber!)
        topLabel.text = "Średnia: \(String(format: "%.2f", avg))"
    }
}

//MARK:-- extension

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gradesNumber ?? 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TableViewCell
        let slider: Grade = gradeArray[indexPath.row]
        cell.gradeSlider.tag = indexPath.row
        cell.gradeSlider.setValue(5, animated: true)
        cell.gradeValue.text = slider.grade
        cell.gradeNumber.text = slider.title
        cell.callback = { val in
            self.gradeArray[indexPath.row].sliderValue = Int(val)
            self.gradeArray[indexPath.row].grade = "\(Int(val))"
        }
        return cell
    }
}
