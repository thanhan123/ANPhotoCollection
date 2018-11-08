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
    
    init(dataManager: AllDataManager) {
        self.dataManager = dataManager
    }
    
    func getLoginVC() -> UIViewController {
        return LoginViewController(
            logicController: LoginLogicController(dataManager: dataManager),
            coordinator: self
        )
    }
}
