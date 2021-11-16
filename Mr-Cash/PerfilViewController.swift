//
//  PerfilViewController.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit

class PerfilViewController: UIViewController {
    
    var nombre : String!
    var correo: String!
    
    @IBOutlet weak var tfNombre: UILabel!
    
    @IBOutlet weak var tfCorreo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tfNombre.text = nombre
        tfCorreo.text = correo
    }
    
}
