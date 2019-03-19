//
//  ViewController.swift
//  midiacerta
//
//  Created by Levi Saturnino on 25/12/18.
//  Copyright © 2018 Media Certa. All rights reserved.
//

import UIKit
import WebKit

let URL_SOBRE = "https://pouperapido.com.br"
class ViewController: UIViewController, WKNavigationDelegate{
    @IBOutlet var webView : WKWebView!
    @IBOutlet var progress : UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: URL_SOBRE)
        let request = URLRequest(url: url!)
        webView.navigationDelegate = self
        webView.load(request)
        progress.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
         progress.stopAnimating()
  //      print("Finished navigating to url \(String(describing: webView.url))")
    }
 
}

