//
//  LoginViewController.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 10/27/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController<LoginView>, LoginViewActionDelegate {
    
    let logicController: LoginLogicController
    let coordinator: Coordinator
    let router: Router

    // MARK: Override
    init(logicController: LoginLogicController,
         coordinator: Coordinator,
         router: Router) {
        self.logicController = logicController
        self.coordinator = coordinator
        self.router = router
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        self.currentView.actionDelegate = self
    }
    
    // MARK: LoginViewActionDelegate
    func photoViewWasTapped() {
        router.navigate(to: coordinator.getDashboardVC(), transitionType: .changeRootView)
    }
    
    func descriptionLabelWasTapped() {
        
    }
}

