//
//  RootAuthVC.swift
//  OZLive
//
//  Created by Olijujuan Green on 6/24/22.
//

import UIKit

class RootAuthVC: UIViewController {
    
    let bannerImageview: UIImageView = {
        let img = UIImage(named: "OZLiveBanner")
        let imgView = UIImageView(image: img)
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
    }()
    
    lazy var loginBtn: UIButton = {
        var btn = UIButton()
        let img = UIImage(named: "LoginBtnImg")
        btn.setImage(img, for: .normal)
        btn.addTarget(self, action: #selector(loginBtnPressed), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    @objc func loginBtnPressed() {
        let vc = LoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    lazy var signupBtn: UIButton = {
        var btn = UIButton()
        let img = UIImage(named: "SignupBtnImg")
        btn.setImage(img, for: .normal)
        btn.addTarget(self, action: #selector(signupBtnPressed), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    @objc func signupBtnPressed() {
        let vc = SignupVC()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        let img = UIImage(named: "RootAuthBg")!
        view.backgroundColor = UIColor(patternImage: img)
        
        [bannerImageview, loginBtn, signupBtn].forEach { view.addSubview($0) }
        
        NSLayoutConstraint.activate([
        
            bannerImageview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bannerImageview.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bannerImageview.heightAnchor.constraint(equalToConstant: 200),
            bannerImageview.widthAnchor.constraint(equalToConstant: 200),
            
            loginBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            loginBtn.topAnchor.constraint(equalTo: bannerImageview.bottomAnchor, constant: 8),
            loginBtn.widthAnchor.constraint(equalToConstant: 150),
            loginBtn.heightAnchor.constraint(equalToConstant: 150),
            
            signupBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            signupBtn.topAnchor.constraint(equalTo: loginBtn.topAnchor),
            signupBtn.widthAnchor.constraint(equalToConstant: 150),
            signupBtn.heightAnchor.constraint(equalToConstant: 150)
        
        ])
        
    }
}
