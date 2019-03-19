//
//  DetalhesCarroViewController.swift
//  iCarros
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import UIKit

class DetalhesCarroViewController: UIViewController {
    
    @IBOutlet weak var carroImageView: UIImageView!
    
    @IBOutlet weak var descTextView: UITextView!
    var carro: Carro?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let c = carro{
            
            self.title = c.nome
            carroImageView.image = UIImage(named: c.url_foto)
            descTextView.text = c.desc
            
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
