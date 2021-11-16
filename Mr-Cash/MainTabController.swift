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
    override func viewDidLoad() {
        super.viewDidLoad()
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
