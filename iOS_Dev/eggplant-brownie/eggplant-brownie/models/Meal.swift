//
//  Meal.swift
//  eggplant-brownie
//
//  Created by Levi Saturnino on 18/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import Foundation

class Meal{
    
    var name: String
    var happiness: Int
    var items = Array<Item>()
    
    init(name : String, happiness : Int){
        self.name = name
        self.happiness = happiness
    }
    
    func allCalories() -> Double{
        print("calculating")
        var total = 0.0
        for i in items{
            total += i.calories
        }
        return total
    }
}
