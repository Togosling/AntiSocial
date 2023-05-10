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
        label.textAlignment = .center
        label.text = "Welcome"
        return label
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
        label.font = UIFont(name: "Poppins-Medium", size: 20)
        label.textAlignment = .center
        label.text = "Login to your account"
        return label
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
            make.top.equalTo(welcomeLabel.snp.bottom).offset(5)
            make.centerX.equalToSuperview()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
