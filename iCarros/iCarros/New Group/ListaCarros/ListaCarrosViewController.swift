//
//  ListaCarrosViewController.swift
//  iCarros
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import UIKit


class ListaCarrosViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
   

    @IBOutlet weak var tableView: UITableView!
    var carros: Array<Carro> = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Carros"
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view.
        carros = CarroService.getCarros()
        
        let xib = UINib(nibName: "CarroCell", bundle: nil)
        
        self.tableView.register(xib, forCellReuseIdentifier: "cell")
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       let linha = indexPath.row
        let carro = self.carros[linha]
        let vc = DetalhesCarroViewController(nibName:"DetalhesCarroViewController",bundle: nil)
        vc.carro = carro
        self.navigationController?.pushViewController(vc, animated: true)
        
       // Alerta.alerta(carro.nome, viewController: self)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.carros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! CarroCell
        let linha = indexPath.row
        
        let carro = self.carros[linha]
        
        
        cell.nomeLabel!.text = carro.nome
       cell.descLabel.text = carro.desc
        cell.carroImageView!.image = UIImage(named: carro.url_foto)
        return cell
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
