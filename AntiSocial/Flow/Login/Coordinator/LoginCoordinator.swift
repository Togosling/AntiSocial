//
//  LoginCoordinator.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/10.
//

import UIKit

class LoginCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginViewModel = LoginViewModel.init()
        loginViewModel.coordinator = self
        let loginController = LoginViewController(loginViewModel: loginViewModel)
        navigationController.pushViewController(loginController, animated: true)
    }
    
    func pop() {
        
    }
    
    func gotoRegister() {
        let registrationCoordinator = RegisterCoordinator(navigationController: navigationController)
        registrationCoordinator.start()
    }
    
    func gotoForgotPassword() {
        let forgotPasswordCoordinator = ForgotPasswordCoordinator(navigationController: navigationController)
        forgotPasswordCoordinator.start()
    }
}
