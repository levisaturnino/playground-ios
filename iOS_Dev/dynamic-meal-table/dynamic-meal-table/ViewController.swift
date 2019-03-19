//
//  ViewController.swift
//  dynamic-meal-table
//
//  Created by Levi Saturnino on 18/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let meals = [ "eggplant brownie", "zucchini muffin"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let meal = meals[ row ]
        
        var cell = UITableViewCell(
            style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = meal
        
        return cell
    }
}

