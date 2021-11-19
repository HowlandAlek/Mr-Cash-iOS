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
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Specify date components
        var dateComponents = DateComponents()
        dateComponents.year = 2023
        dateComponents.month = 7
        dateComponents.day = 13
        dateComponents.timeZone = TimeZone(abbreviation: "JST") // Japan Standard Time
        dateComponents.hour = 8
        dateComponents.minute = 34

        // Create date from components
        let userCalendar = Calendar(identifier: .gregorian) // since the components above (like year 1980) are for Gregorian
        let fechaDemo = userCalendar.date(from: dateComponents)
        
        var recordatorio = Recordatorio(nombre: "Netlix", monto: 280, fecha: fechaDemo!)
        var recordatorio2 = Recordatorio(nombre: "Colegiatura Tec", monto: 30000, fecha: fechaDemo!)
        var recordatorio3 = Recordatorio(nombre: "Disney+", monto: 249, fecha: fechaDemo!)
        var recordatorio4 = Recordatorio(nombre: "CFE (Luz)+", monto: 450, fecha: fechaDemo!)
        var recordatorio5 = Recordatorio(nombre: "Xbox Gamepass Ultimate", monto: 269, fecha: fechaDemo!)
        
        
        arrRecordatorios.append(recordatorio)
        arrRecordatorios.append(recordatorio2)
        arrRecordatorios.append(recordatorio3)
        arrRecordatorios.append(recordatorio4)
        arrRecordatorios.append(recordatorio5)
        
        
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
        
        let calendar = Calendar.current
        
        let day = calendar.component(.day, from: recordatorio.Fecha)
        let month = calendar.component(.month, from: recordatorio.Fecha)
        let year = calendar.component(.year, from: recordatorio.Fecha)
        let fechaStr = "\(day)-\(month)-\(year)"
        
        cell.etFechaPago.text = fechaStr
        
        let montoFormat = String(format: "%0.3f", recordatorio.Monto)
        
        cell.etMontoPago.text = "$ \(montoFormat)"

        return cell
    }
}

