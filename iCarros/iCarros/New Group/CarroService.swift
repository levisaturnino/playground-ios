//
//  CarroService.swift
//  iCarros
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import Foundation

class CarroService{
 
    
    
class func getCarros()->Array<Carro>{
    
    
    var  carros:Array<Carro> = []
    
    for i in 1...20{
        let carro = Carro()

    carro.nome = "Carro "+String(i)
    carro.desc = "Desc Ferrari "+String(i)
    carro.url_foto = "ferrari_ff.png"
    carros.append(carro)
    
    }
    
    return carros
    
    }
}
