//
//  LoginLogicController.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 10/27/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

typealias LoginLogicDataManager = TokenDataManager & CountryDataManager

class LoginLogicController {
    
    let dataManager: LoginLogicDataManager
    
    init(dataManager: LoginLogicDataManager) {
        self.dataManager = dataManager
    }
}
