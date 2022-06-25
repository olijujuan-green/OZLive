//
//  SignupVC.swift
//  OZLive
//
//  Created by Olijujuan Green on 6/24/22.
//

import UIKit

class SignupVC: UIViewController {
    
    let emailTextField: OZTextField = {
        let image = UIImage(systemName: "envelope")
        let placeholder = "Email..."
        let tf = OZTextField(image: image, placeHolderString: placeholder, secretText: false)
        return tf
    }()
    
    let usernameTextField: OZTextField = {
        let image = UIImage(systemName: "person")
        let placeholder = "Username..."
        let tf = OZTextField(image: image, placeHolderString: placeholder, secretText: false)
        return tf
    }()
    
    let passwordTextField: OZTextField = {
        let image = UIImage(systemName: "lock")
        let placeholder = "Password..."
        let tf = OZTextField(image: image, placeHolderString: placeholder, secretText: true)
        return tf
    }()
    
    let confirmPasswordTextField: OZTextField = {
        let image = UIImage(systemName: "lock")
        let placeholder = "Re-Type Password..."
        let tf = OZTextField(image: image, placeHolderString: placeholder, secretText: true)
        return tf
    }()
    
    let appleSignUpBtn: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "applelogo")
        button.setImage(image, for: .normal)
        button.setTitle("Sing Up WIth Apple", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 4
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc func appleSignUpPressed()  {
        print("Apple Sign Up Pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
    }

    func configure() {
        let img = UIImage(named: "SignupBg")!
        view.backgroundColor = UIColor(patternImage: img)
        
        [emailTextField, usernameTextField, passwordTextField, confirmPasswordTextField, appleSignUpBtn].forEach { view.addSubview($0) }
        
        NSLayoutConstraint.activate([
        
            emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            
            usernameTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            usernameTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            usernameTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8),
            usernameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 8),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            confirmPasswordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            appleSignUpBtn.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            appleSignUpBtn.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            appleSignUpBtn.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 40),
            appleSignUpBtn.heightAnchor.constraint(equalToConstant: 60)
        
        ])
    }

}

