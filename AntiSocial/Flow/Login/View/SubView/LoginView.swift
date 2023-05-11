//
//  LoginView.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/10.
//

import UIKit

class LoginView: UIView {
    
    let topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "topImage")
        return imageView
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Poppins-Medium", size: 28)
        label.text = "Welcome"
        return label
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 20)
        label.text = "Login to your account"
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.996, green: 0.988, blue: 0.988, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 18)
        label.text = "Email"
        return label
    }()
    
    let emailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "Email"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    let passwordTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.996, green: 0.988, blue: 0.988, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 18)
        label.text = "Password"
        return label
    }()
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(UIColor(red: 0.918, green: 0.263, blue: 0.208, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 16)
        return button
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(red: 90/255, green: 179/255, blue: 240/255, alpha: 1)
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 20)
        button.layer.cornerRadius = 22
        return button
    }()
    
    let dontHaveAccountLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 97/255, green: 97/255, blue: 97/255, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 16)
        label.text = "Don't have account?"
        return label
    }()
    
    let createNowButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Create Now", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 16)
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    fileprivate func setupViews() {
        addSubview(topImageView)
        addSubview(welcomeLabel)
        addSubview(loginLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(forgotPasswordButton)
        addSubview(loginButton)
        addSubview(dontHaveAccountLabel)
        addSubview(createNowButton)
    }
    fileprivate func setupConstraints() {
        topImageView.snp.makeConstraints { make in
            make.height.equalTo(flexibleHeight(to: 300))
            make.width.equalToSuperview()
            make.top.equalToSuperview()
        }
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(topImageView.snp.bottom)
            make.centerX.equalToSuperview()
        }
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(flexibleHeight(to: 5))
            make.centerX.equalToSuperview()
        }
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(flexibleHeight(to: 30))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 30))
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(flexibleHeight(to: 5))
            make.height.equalTo(flexibleHeight(to: 50))
            make.leading.equalTo(emailLabel.snp.leading)
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -30))
        }
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(flexibleHeight(to: 10))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 30))
        }
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(flexibleHeight(to: 5))
            make.height.equalTo(flexibleHeight(to: 50))
            make.leading.equalTo(passwordLabel.snp.leading)
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -30))
        }
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(flexibleHeight(to: 10))
            make.trailing.equalTo(passwordTextField.snp.trailing)
        }
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordButton.snp.bottom).offset(flexibleHeight(to: 30))
            make.height.equalTo(flexibleHeight(to: 50))
            make.width.equalTo(passwordTextField.snp.width)
            make.centerX.equalToSuperview()
        }
        dontHaveAccountLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(flexibleHeight(to: 15))
            make.leading.equalTo(loginButton.snp.leading).offset(flexibleWidth(to: 35))
        }
        createNowButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(flexibleHeight(to: 8))
            make.leading.equalTo(dontHaveAccountLabel.snp.trailing).offset(flexibleWidth(to: 10))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
