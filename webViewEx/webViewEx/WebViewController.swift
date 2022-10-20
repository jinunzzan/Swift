//
//  WebViewController.swift
//  webViewEx
//
//  Created by Eunchan Kim on 2022/10/18.
//

import UIKit
import WebKit

final class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openWebPage(to: "https://www.naver.com")
    }
    
    func openWebPage(to urlString: String) {
        guard let url = URL(string: urlString) else {
            print("InValid URL")
            return
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
