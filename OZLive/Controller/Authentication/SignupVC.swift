//
//  SignupVC.swift
//  OZLive
//
//  Created by Olijujuan Green on 6/24/22.
//

import UIKit

class SignupVC: UIViewController {
    
//    let emailTextField: UITextField = {
//        let tf = UITextField()
//        let img = UIImage(systemName: "envelope")
//        let imgView = UIImageView(image: img)
//        let view = UIView()
//        imgView.tintColor = .white
//        tf.leftView = imgView
//        tf.attributedPlaceholder = NSAttributedString(string: " Email...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
//        return tf
//    }()
    
    let emailTextField: OZTextField = {
        let image = UIImage(systemName: "envelope")!
        let placeholder = "Email..."
        let tf = OZTextField(image: image, placeHolderString: placeholder)
        return tf
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
    }

    func configure() {
        let img = UIImage(named: "SignupBg")!
        view.backgroundColor = UIColor(patternImage: img)
        
        [emailTextField].forEach { view.addSubview($0) }
        
        NSLayoutConstraint.activate([
        
            emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32)
        
        ])
    }

}

