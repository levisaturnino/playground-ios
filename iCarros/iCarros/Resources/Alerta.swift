//
//  Alerta.swift
//  iCarros
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import Foundation
import UIKit

class Alerta{
    
    
    class func alerta(_ msg: String, viewController:UIViewController){
        
        let alert = UIAlertController(title: "Alerta", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        viewController.present(alert, animated: true,completion: nil)
        
    }
    
}
