//
//  AgregarMetaVC.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit

class AgregarMetaVC: UIViewController {
    
    
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfMonto: UITextField!
    @IBOutlet weak var tfTipo: UITextField!
    @IBOutlet weak var dpFecha: UIDatePicker!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    @IBAction func agregarMeta(_ sender: Any) {
        if tfNombre.text != nil && tfMonto.text != nil && tfTipo.text != nil && dpFecha.date >= Date() {
            let nombre = tfNombre.text!
            let monto = Double(tfMonto.text!) ?? 0
            let tipo = tfTipo.text!
            let fecha = dpFecha.date
            
            let nuevaMeta = Meta(nombre: nombre, monto: monto, fecha: fecha, tipo: tipo)
            
            print(nuevaMeta.Nombre,nuevaMeta.Monto,nuevaMeta.Tipo,nuevaMeta.Fecha)
        } else {
            // Cuadro de dialogo
            let alerta = UIAlertController(title: "Aviso", message: "Error, entrada incorrecta.", preferredStyle: .alert)
            // Boton
            let aceptar = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alerta.addAction(aceptar)
            // Mostrar la alerta
            present(alerta, animated: true)
        }
    }
    
}
