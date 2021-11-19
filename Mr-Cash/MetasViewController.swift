//
//  MetasViewController.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit

class MetasViewController: UIViewController {
    
    
    @IBOutlet weak var tvMetas: UITableView!
    
    var arrMetas:[Meta] = []
    

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
        
        
        var meta1 = Meta(nombre: "Xbox", monto: 13999, fecha: fechaDemo!, tipo: "Entretenimiento")
        
        var meta2 = Meta(nombre: "Dune", monto: 399, fecha: fechaDemo!, tipo: "Entretenimiento")
        
        var meta3 = Meta(nombre: "MacBook Pro", monto: 72000, fecha: fechaDemo!, tipo: "Trabajo")
        
        var meta4 = Meta(nombre: "Reparación ventana", monto: 7000, fecha: fechaDemo!, tipo: "Hogar")
        
        
        arrMetas.append(meta1)
        arrMetas.append(meta2)
        arrMetas.append(meta3)
        arrMetas.append(meta4)
        
    }

}

extension MetasViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMetas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvMetas.dequeueReusableCell(withIdentifier: "celdaMeta") as! CeldaMeta
        
        var meta = arrMetas[indexPath.row]
        
        cell.etTitulo.text = meta.Nombre
        cell.etCosto.text = "$ \(String(meta.Monto))"
        
        let calendar = Calendar.current
        
        let day = calendar.component(.day, from: meta.Fecha)
        let month = calendar.component(.month, from: meta.Fecha)
        let year = calendar.component(.year, from: meta.Fecha)
        let fechaStr = "\(day)-\(month)-\(year)"
        
        cell.etFecha.text = fechaStr
        

        // Replace the hour (time) of both dates with 00:00
        let date1 = calendar.startOfDay(for: Date())
        let date2 = calendar.startOfDay(for: meta.Fecha)

        let diasRestantes = calendar.dateComponents([.day], from: date1, to: date2).day
        
        let diasRestantesD = Double(diasRestantes!)
        let ahorro = meta.Monto / diasRestantesD
        let ahorroFormat = String(format: "%0.3f", ahorro)
        
        cell.etAhorro.text = "$ \(ahorroFormat)"
        
        cell.etDiasRestantes.text = "\(diasRestantes!) días"

        return cell
    }
    
}
