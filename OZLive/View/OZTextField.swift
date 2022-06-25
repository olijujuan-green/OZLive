//
//  OZTextField.swift
//  OZLive
//
//  Created by Olijujuan Green on 6/24/22.
//

import UIKit

class OZTextField: UITextField {
    
    let insets              : UIEdgeInsets
    let image               : UIImage
    let placeholderString   : String
    let secretText          : Bool
    
    init(image: UIImage?, placeHolderString: String, secretText: Bool) {
        self.insets = UIEdgeInsets(top: 0, left: 32, bottom: 0, right: 12)
        self.image = image!
        self.placeholderString = placeHolderString
        self.secretText = secretText
        super.init(frame: .zero )
        
        let imageView = UIImageView(image: image)
        imageView.tintColor = .white
        leftView = imageView
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 4
        leftViewMode = .always
        attributedPlaceholder = NSAttributedString(string: placeholderString, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        isSecureTextEntry = secretText
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets )
    }
    
}
