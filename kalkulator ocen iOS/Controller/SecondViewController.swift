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
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var gradesTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradesTable.dataSource = self
        
        gradesTable.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        topLabel.text = "Tu pojawi się średnia"
    }
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gradesNumber ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TableViewCell
        //cell.textLabel?.text = gradeCell [indexPath.row].gradeNumber
        cell.gradeNumber.text = "Ocena \(indexPath.row + 1)"
        return cell
        
    }
    
    
}
