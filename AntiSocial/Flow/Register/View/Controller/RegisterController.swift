//
//  RegisterController.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/11.
//

import UIKit

class RegisterController: UIViewController {
    
    fileprivate var registerViewModel: RegisterViewModelType
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
    }
    
    init(registerViewModel: RegisterViewModelType) {
        self.registerViewModel = registerViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
