//
//  ViewController.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit

class ViewController: UIViewController
{
    
    
    @IBOutlet weak var tfNombre: UITextField!
    
    
    @IBOutlet weak var tfCorreo: UITextField!
    
    
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let MainTabController = segue.destination as? MainTabController {
            
            MainTabController.nombre = tfNombre.text
            
            MainTabController.correo = tfCorreo.text
            
        }
    }
    

}

