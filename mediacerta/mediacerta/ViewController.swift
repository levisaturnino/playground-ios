//
//  ViewController.swift
//  mediacerta
//
//  Created by Levi Saturnino on 27/12/18.
//  Copyright © 2018 Media Certa. All rights reserved.
//

import UIKit



let URL_POUPE = "https://pouperapido.com.br"

class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var webView : UIWebView!
    @IBOutlet var progress : UIActivityIndicatorView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Título
        self.title = "Media Certa"
        
        // Inicia a animação do activity indicator
        self.progress.startAnimating()
        
        // Carrega a URL no WebView
        let url = URL(string: URL_POUPE)!
        
        //let path = NSBundle.mainBundle().pathForResource("index", ofType: "html")
        //let url = NSURL(fileURLWithPath:path!)!
        
        let request = URLRequest(url:url,cachePolicy: NSURLRequest.CachePolicy.reloadIgnoringLocalCacheData, timeoutInterval: 0)
        self.webView.loadRequest(request)
        
        // delegate
        self.webView.delegate = self
        
        //  print("go")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        progress.stopAnimating()
        //  print("stop")
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebView.NavigationType) -> Bool {
        // print("Carregando página \(request.url)!")
        return true
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask  {
        // Apenas vertical
        return UIInterfaceOrientationMask.portrait
    }
    
  
    
    
}




