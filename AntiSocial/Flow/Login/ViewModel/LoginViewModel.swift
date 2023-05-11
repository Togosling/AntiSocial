//
//  LoginViewModel.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/10.
//

import Foundation

protocol LoginViewModelType {
    func gotoRegister()
    func gotoForgotPassword()
}

class LoginViewModel: LoginViewModelType {
    
    var coordinator = LoginCoordinator(navigationController: BaseNavigationController.init())
    
    func gotoRegister() {
        coordinator.gotoRegister()
    }
    
    func gotoForgotPassword() {
        coordinator.gotoForgotPassword()
    }
    
}
