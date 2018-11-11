//
//  DashboardLogicController.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 11/11/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

typealias DashboardLogicDataManager = UserDataManager & PhotosDataManager

class DashboardLogicController {
    
    let dataManager: DashboardLogicDataManager
    
    init(dataManager: DashboardLogicDataManager) {
        self.dataManager = dataManager
    }
}
