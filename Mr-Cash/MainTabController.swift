//
//  MainTabController.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import Foundation
import UIKit

class MainTabController : UITabBarController
{
    
    var nombre : String!
    var correo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else {
            return
        }
        
        for viewController in viewControllers {
            if let perfilNavController = viewController as? PerfilNavController {
                if let perfilViewController = perfilNavController.viewControllers.first as?  PerfilViewController {
                    perfilViewController.nombre = nombre
                    perfilViewController.correo = correo
                }
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}
