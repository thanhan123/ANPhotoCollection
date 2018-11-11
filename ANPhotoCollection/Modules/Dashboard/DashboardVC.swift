//
//  DashboardVC.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 11/11/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import UIKit

class DashboardVC: BaseViewController<DashboardView> {
    
    let logicController: DashboardLogicController
    let coordinator: Coordinator
    let router: Router
    
    // MARK: Override
    init(logicController: DashboardLogicController,
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
        currentView.setupView()
    }
}
