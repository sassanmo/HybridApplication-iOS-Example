//
//  ViewController.swift
//  HybridApplication
//
//  Created by NovaTec on 06.11.17.
//  Copyright © 2017 Matteo Sassano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var input: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        input.text = "www.uni-stuttgart.de"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func loadWebSitePressed(_ sender: Any) {
        var url = input.text
        if url != "" && url != nil {
            if (url?.hasPrefix("www"))! {
                url = "https://\(url!)"
            }
            
            webview.loadRequest(URLRequest(url: URL(string: url!)!))
        }
    }
    
    @IBAction func reloadPage(_ sender: Any) {
        webview.reload()
    }
    
    @IBAction func goForwardPressed(_ sender: Any) {
        webview.goForward()
    }
    
    
    @IBAction func goBackwardsPressed(_ sender: Any) {
        webview.goBack()
    }
    
    
    
    
    
    
}

