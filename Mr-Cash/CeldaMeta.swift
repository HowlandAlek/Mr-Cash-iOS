//
//  CeldaMeta.swift
//  Mr-Cash
//
//  Created by Alek Howland on 19/11/21.
//

import UIKit

class CeldaMeta: UITableViewCell {
    
    
    @IBOutlet weak var etTitulo: UILabel!
    
    @IBOutlet weak var etCosto: UILabel!
    
    @IBOutlet weak var etFecha: UILabel!
    
    @IBOutlet weak var etAhorro: UILabel!
    
    @IBOutlet weak var etDiasRestantes: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
