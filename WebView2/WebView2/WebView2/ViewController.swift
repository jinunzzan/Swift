//
//  ViewController.swift
//  WebView2
//
//  Created by Eunchan Kim on 2022/10/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "http://daum.net"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

    
    
    @IBAction func goGoogle(_ sender: Any) {
        if let google = URL(string: "http://www.google.com"){
            let request = URLRequest(url: google)
            webView.load(request)
        }
    }
    
    
    @IBAction func goNaver(_ sender: Any) {
        if let naver = URL(string: "http://www.naver.com"){
            let request = URLRequest(url: naver)
            webView.load(request)
        }
    }
    
    @IBAction func goDaum(_ sender: Any) {
        if let daum = URL(string: "http://www.daum.net"){
            let request = URLRequest(url: daum)
            webView.load(request)
        }
    }
}
