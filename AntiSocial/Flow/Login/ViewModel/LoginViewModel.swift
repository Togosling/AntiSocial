//
//  LoginViewModel.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/10.
//

import Foundation

protocol LoginViewModelType {
    
}

class LoginViewModel: LoginViewModelType {
    
    var coordinator = LoginCoordinator(navigationController: BaseNavigationController.init())
    
}
