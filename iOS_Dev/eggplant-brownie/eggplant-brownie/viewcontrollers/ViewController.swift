//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Levi Saturnino on 18/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameField: UITextField!
    @IBOutlet var happinessField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
  @IBAction  func add(){
    if nameField == nil || happinessField == nil {
        return
    }
    
    let name = nameField!.text
    
    let happiness = Int(happinessField!.text!)
    
    if happiness == nil {
        return
    }
    
    let meal = Meal(name: name!, happiness: happiness!)
    
    print("eaten: \(meal.name) \(meal.happiness)")
    if let navigation = self.navigationController {
        navigation.popViewController(animated: true)
    }    }
}

