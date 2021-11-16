//
//  MetasViewController.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit

class MetasViewController: UIViewController {
    
    var arrMetas:[Meta] = []
    
    var meta1 = Meta(nombre: "Xbox", monto: 13999, fecha: Date(), tipo: "Entretenimiento")
    
    var meta2 = Meta(nombre: "Dune", monto: 399, fecha: Date(), tipo: "Entretenimiento")
    
    var meta3 = Meta(nombre: "MacBook Pro", monto: 72000, fecha: Date(), tipo: "Trabajo")
    
    var meta4 = Meta(nombre: "Reparación ventana", monto: 7000, fecha: Date(), tipo: "Hogar")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMeta", for: indexPath)
        
        celda.textLabel?.text = arrMetas[indexPath.row].Nombre
        
        return celda
    }
    
}
