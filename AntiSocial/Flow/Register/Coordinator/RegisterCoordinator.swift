//
//  RegisterCoordinator.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/11.
//

import UIKit

class RegisterCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let registrationViewModel = RegisterViewModel.init()
        registrationViewModel.coordinator = self
        let registrationController = RegisterController(registerViewModel: registrationViewModel)
        navigationController.pushViewController(registrationController, animated: false)
        
    }
    
    func pop() {
        navigationController.popViewController(animated: false)
    }
    
    
}
