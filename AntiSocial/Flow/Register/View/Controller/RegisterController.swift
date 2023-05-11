//
//  RegisterController.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/11.
//

import UIKit

class RegisterController: UIViewController {
    
    fileprivate var registerViewModel: RegisterViewModelType
    fileprivate let registrationView = RegistrationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        addTargets()
    }
    
    fileprivate func addTargets() {
        registrationView.loginButton.addTarget(self, action: #selector(gotoLogin), for: .touchUpInside)
    }
    
    @objc fileprivate func gotoLogin() {
        registerViewModel.gotoLogin()
    }
    
    fileprivate func setupViews() {
        view.addSubview(registrationView)
    }
    
    fileprivate func setupConstraints() {
        registrationView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(registerViewModel: RegisterViewModelType) {
        self.registerViewModel = registerViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
