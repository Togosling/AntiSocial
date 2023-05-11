//
//  RegisterViewModel.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/11.
//

import Foundation

protocol RegisterViewModelType {
    
}

class RegisterViewModel: RegisterViewModelType {
    
    var coordinator = RegisterCoordinator(navigationController: BaseNavigationController.init())
}
