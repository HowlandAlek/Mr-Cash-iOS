//
//  DetalleTipVC.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit
import WebKit

class DetalleTipVC: UIViewController {
    
    var tituloTip : String!
    var link: String!

    @IBOutlet weak var webTip: WKWebView!
    
    @IBOutlet weak var aiCargando: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        cargarPagina()
    }
    
    func cargarPagina() {
        let direccion = link.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        if direccion != nil {
            if let url = URL(string: direccion!){
                let request = URLRequest(url: url)
                webTip.load(request)
                webTip.navigationDelegate = self
            }
        }
    }

}

extension DetalleTipVC : WKNavigationDelegate
{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        aiCargando.stopAnimating()
    }
}
