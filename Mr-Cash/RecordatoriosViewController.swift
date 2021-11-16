//
//  RecordatoriosViewController.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit

class RecordatoriosViewController: UIViewController
{
    
    @IBOutlet weak var tvRecordatorios: UITableView!
    
    
    var arrRecordatorios  = [] as [Recordatorio]
    
    var recordatorio = Recordatorio(nombre: "Xbox", monto: 13999, hora: Calendar.current.component(.hour, from: Date()), fecha: Date())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        arrRecordatorios.append(recordatorio)
        
        tvRecordatorios.delegate = self
        tvRecordatorios.dataSource = self
    }
    
}

// Manejear las interacciones de las celdas
extension RecordatoriosViewController :  UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("Row Tapped")
    }
}

extension RecordatoriosViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRecordatorios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvRecordatorios.dequeueReusableCell(withIdentifier: "celdaRecordatorio") as! CeldaRecordatorio
        
        var recordatorio = arrRecordatorios[indexPath.row]
        
        cell.etTitulo.text = recordatorio.Nombre
        cell.etFechaPago.text = DateFormatter().string(from: recordatorio.Fecha)
        cell.etMontoPago.text = String(recordatorio.Monto)

        return cell
    }
}

