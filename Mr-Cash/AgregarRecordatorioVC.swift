//
//  AgregarRecordatorioVC.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit

class AgregarRecordatorioVC: UIViewController {
    
    
    @IBOutlet weak var tfNombre: UITextField!
    
    @IBOutlet weak var tfMonto: UITextField!
    
    @IBOutlet weak var dpFecha: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func agregarRecordatorio(_ sender: Any) {
        if tfNombre.text != nil && tfMonto.text != nil && dpFecha.date >= Date() {
            let nombre = tfNombre.text!
            let monto = Double(tfMonto.text!) ?? 0
            let fecha = dpFecha.date
            
            let nuevoRecordatorio = Recordatorio(nombre: nombre, monto: monto, fecha: fecha)
            
            print(nuevoRecordatorio.Nombre,nuevoRecordatorio.Monto, nuevoRecordatorio.Fecha)
            
            self.navigationController?.popToRootViewController(animated: true)
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
