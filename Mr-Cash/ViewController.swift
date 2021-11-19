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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let MainTabController = segue.destination as? MainTabController {
            
            MainTabController.nombre = tfNombre.text
            
            MainTabController.correo = tfCorreo.text
            
            tfNombre.text = ""
            tfCorreo.text = ""
            tfPassword.text = ""
            
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if tfNombre.text?.isEmpty == true || tfCorreo.text?.isEmpty == true  || tfPassword.text?.isEmpty == true  {
            // Cuadro de dialogo
            let alerta = UIAlertController(title: "Aviso", message: "Debes introducir todos los campos", preferredStyle: .alert)
            // Boton
            let aceptar = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alerta.addAction(aceptar)
            // Mostrar la alerta
            present(alerta, animated: true)
            return false
        } else {
            return true
        }
    }
    

}

