//
//  TipsViewController.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import UIKit

class TipsViewController: UIViewController {
    
    
    @IBOutlet weak var tvTips: UITableView!
    
    var arrTips: [String:String] = ["Bank Of America nos regala 8 consejos...":"https://bettermoneyhabits.bankofamerica.com/es/saving-budgeting/ways-to-save-money", "Entrepreneur nos da 7 consejos muy utiles...":"https://www.entrepreneur.com/article/268900", "Los 10 Mejores ETF's para invertir":"https://omareducacionfinanciera.com/mejores-sofipos-2021/", "¿Cómo empezar a invertir en acciones?":"https://cnnespanol.cnn.com/2021/02/02/invertir-bolsa-sin-experiencia/"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tvTips.indexPathForSelectedRow
        let indice = indexPath?.row
        if indice != nil {
            let titulo = Array(arrTips.keys)[indice!]
            let link = Array(arrTips.values)[indice!]
            let vc = segue.destination as! DetalleTipVC
            vc.tituloTip = titulo
            vc.link = link
        }
        
        
    }

}

extension TipsViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTips.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvTips.dequeueReusableCell(withIdentifier: "celdaTips", for: indexPath)
        
        let titulo = Array(arrTips.keys)[indexPath.row]
        cell.textLabel?.text = titulo

        return cell
        
    }
    
    
}
