//
//  ForgotPasswordViewModel.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/11.
//

import UIKit

protocol ForgotPasswordViewModelType {
    func gotoNeedHelp()
}

class ForgotPasswordViewModel: ForgotPasswordViewModelType {
    
    var coordinator = ForgotPasswordCoordinator(navigationController: BaseNavigationController.init())
    
    func gotoNeedHelp() {
        coordinator.pop()
    }
}
