//
//  LoginView.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 11/11/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import UIKit
import AloeStackView

@objc protocol LoginViewActionDelegate: AnyObject {
    func photoViewWasTapped()
    func descriptionLabelWasTapped()
}

class LoginView: BaseView {
    
    private var stackView: AloeStackView = {
        let stack = AloeStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.separatorHeight = 0.0
        return stack
    }()
    
    private var userNameTextField: UITextField = {
        let txtField = UITextField()
        txtField.textColor = .black
        txtField.placeholder = "User name"
        return txtField
    }()
    
    private var passwordTextField: UITextField = {
        let txtField = UITextField()
        txtField.textColor = .black
        txtField.placeholder = "Password"
        return txtField
    }()
    
    private var confirmButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.green, for: .normal)
        button.setTitle("Confirm", for: .normal)
        return button
    }()
    
    public weak var actionDelegate: LoginViewActionDelegate?
    
    override func setupView() {
        super.setupView()
        
        stackView.addRow(userNameTextField)
        stackView.addRow(passwordTextField)
        stackView.addRow(confirmButton)
        addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
}
