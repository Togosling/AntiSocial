//
//  BaseNavigationController.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/10.
//

import Foundation

import UIKit


class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.isHidden = true
    }
}
