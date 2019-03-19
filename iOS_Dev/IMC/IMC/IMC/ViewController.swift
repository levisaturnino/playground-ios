//
//  ViewController.swift
//  IMC
//
//  Created by Levi Saturnino on 24/02/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tfWeight: UITextField!
    @IBOutlet var tfHeight: UITextField!
    @IBOutlet var lbResult: UILabel!
    @IBOutlet var ivResult: UIImageView!
    @IBOutlet var viResult: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
        
        if let  weight = Double(tfWeight.text!), let height = Double(tfHeight.text!){
                imc = weight / (height * height)
            showResults()
        }
    
    }
    
    func showResults(){
        var result: String = ""
        var image:String = ""
        switch  imc {
            case 0..<16:
                result = "Magreza"
                image  = "abaixo"
            case 16..<18.5:
                result = "Abaixo do peso"
                image  = "abaixo"
            case 18.5..<25:
                result = "Peso idela"
                image  = "ideal"
            case 25..<30:
                result = "Sobrepeso"
                image  = "sobre"
            default:
                result = "Obesidade"
                image  = "obesidade"
        }
        lbResult.text = "\(Int(imc)): \(result)"
        ivResult.image = UIImage(named: image)
        viResult.isHidden = false
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)

    }
    
}

