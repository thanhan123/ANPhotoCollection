//
//  LoginViewController.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 10/27/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let logicController: LoginLogicController
    let coordinator: Coordinator

    // MARK: Override
    init(logicController: LoginLogicController,
         coordinator: Coordinator) {
        self.logicController = logicController
        self.coordinator = coordinator
        
        super.init(nibName: "Login", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

