//
//  Coordinator.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 10/27/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import UIKit

typealias AllDataManager = TokenDataManager & UserDataManager & CountryDataManager

// Act as a dependency injection center
class Coordinator {
    
    private let dataManager: AllDataManager
    private let router: Router
    
    init(dataManager: AllDataManager,
         router: Router) {
        self.dataManager = dataManager
        self.router = router
    }
    
    func getLoginVC() -> UIViewController {
        return LoginViewController(
            logicController: LoginLogicController(dataManager: dataManager),
            coordinator: self,
            router: router
        )
    }
    
    func getDashboardVC() -> UIViewController {
        return UIViewController()
    }
    
    func getSettingVC() -> UIViewController {
        return UIViewController()
    }
}

// ===========================
