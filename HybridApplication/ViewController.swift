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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadWebsitePressed(_ sender: Any) {
        webview.loadRequest(URLRequest(url: URL(string: "https://www.google.de")!))
    }
    
    
    
    
}

