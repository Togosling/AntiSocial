//
//  ForgotPasswordCoordinator.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/11.
//

import UIKit

class ForgotPasswordCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: BaseNavigationController
    
    init(navigationController: BaseNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let forgotPasswordViewModel = ForgotPasswordViewModel.init()
        forgotPasswordViewModel.coordinator = self
        let forgotPasswordController = ForgotPasswordController(forgotPasswordViewModel: forgotPasswordViewModel)
        navigationController.pushViewController(forgotPasswordController, animated: false)
    }
    
    func pop() {
        navigationController.popViewController(animated: false)

    }
    
}
