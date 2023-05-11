//
//  ForgotPasswordController.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/11.
//

import UIKit

class ForgotPasswordController: UIViewController {
    
    fileprivate let forgotPasswordViewModel: ForgotPasswordViewModelType
    fileprivate let forgotPasswordView = ForgotPasswordView()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        setupViews()
        setupConstraints()
        addTargets()
    }
    
    fileprivate func addTargets() {
        forgotPasswordView.needHelp.addTarget(self, action: #selector(gotoNeedHelp), for: .touchUpInside)
    }
    
    @objc fileprivate func gotoNeedHelp() {
        forgotPasswordViewModel.gotoNeedHelp()
    }
    
    fileprivate func setupViews() {
        view.addSubview(forgotPasswordView)
    }
    
    fileprivate func setupConstraints() {
        forgotPasswordView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }
    }
    
    init(forgotPasswordViewModel: ForgotPasswordViewModelType) {
        self.forgotPasswordViewModel = forgotPasswordViewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
