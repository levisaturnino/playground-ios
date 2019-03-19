//
//  SobreViewController.swift
//  iCarros
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

import UIKit
let URL_SOBRE = "http://www.livroiphone.com.br/carros/sobre.htm"
class SobreViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var progress: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"

        self.progress.startAnimating()
        
        let url = URL(string:URL_SOBRE)
        let request = URLRequest(url:url!)
        self.webView.loadRequest(request)
        // Do any additional setup after loading the view.
        
        self.webView.delegate = self
    }

    func webViewDidFinishLoad(_ webView: UIWebView) {
        progress.stopAnimating()
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
