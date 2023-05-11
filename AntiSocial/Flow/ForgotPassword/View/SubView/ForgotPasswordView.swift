//
//  ForgotPasswordView.swift
//  AntiSocial
//
//  Created by Тагай Абдылдаев on 2023/5/11.
//

import UIKit

class ForgotPasswordView: UIView {
    
    let topImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "topImage")
        return imageView
    }()
    
    let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "Poppins-Medium", size: 28)
        label.text = "Forgot Password"
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.996, green: 0.988, blue: 0.988, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 18)
        label.text = "Enter your Email"
        return label
    }()
    
    let emailTextField: CustomTextField = {
        let textField = CustomTextField()
        textField.placeholder = "Email"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 6
        return textField
    }()
    
    let sendOTP: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Send OTP", for: .normal)
        button.backgroundColor = UIColor(red: 90/255, green: 179/255, blue: 240/255, alpha: 1)
        button.tintColor = .white
        button.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 20)
        button.layer.cornerRadius = 22
        return button
    }()
    
    let chooseAnotherMethod: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 97/255, green: 97/255, blue: 97/255, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 16)
        label.text = "Choose another method"
        return label
    }()
    
    let needHelp: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Need Help?", for: .normal)
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
        addSubview(forgotPasswordLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(sendOTP)
        addSubview(chooseAnotherMethod)
        addSubview(needHelp)
    }
    fileprivate func setupConstraints() {
        topImageView.snp.makeConstraints { make in
            make.height.equalTo(flexibleHeight(to: 300))
            make.width.equalToSuperview()
            make.top.equalToSuperview()
        }
        forgotPasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(topImageView.snp.bottom)
            make.centerX.equalToSuperview()
        }

        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordLabel.snp.bottom).offset(flexibleHeight(to: 60))
            make.leading.equalToSuperview().offset(flexibleWidth(to: 30))
        }
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(flexibleHeight(to: 5))
            make.height.equalTo(flexibleHeight(to: 50))
            make.leading.equalTo(emailLabel.snp.leading)
            make.trailing.equalToSuperview().offset(flexibleWidth(to: -30))
        }
        sendOTP.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(flexibleHeight(to: 30))
            make.height.equalTo(flexibleHeight(to: 50))
            make.width.equalTo(emailTextField.snp.width)
            make.centerX.equalToSuperview()
        }
        chooseAnotherMethod.snp.makeConstraints { make in
            make.top.equalTo(sendOTP.snp.bottom).offset(flexibleHeight(to: 15))
            make.leading.equalTo(sendOTP.snp.leading).offset(flexibleWidth(to: 35))
        }
        needHelp.snp.makeConstraints { make in
            make.top.equalTo(sendOTP.snp.bottom).offset(flexibleHeight(to: 8))
            make.leading.equalTo(chooseAnotherMethod.snp.trailing).offset(flexibleWidth(to: 10))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

