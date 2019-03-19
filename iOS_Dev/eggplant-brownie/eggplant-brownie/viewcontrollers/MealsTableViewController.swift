//
//  MealsTableViewController.swift
//  eggplant-brownie
//
//  Created by Levi Saturnino on 18/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController {
    
    
    var meals = [ Meal(name: "Eggplant brownie", happiness: 5),
                  Meal(name: "Zucchini Muffin", happiness: 3)]
    
    
    override func viewDidLoad() {
    
    super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals.count    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let row = indexPath.row
        let meal = meals[ row ]
        var cell = UITableViewCell(
            style: .default,
            reuseIdentifier: nil)
        cell.textLabel!.text = meal.name
        return cell
}    
}
