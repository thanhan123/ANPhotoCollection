//
//  UserDataManager.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 10/27/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

protocol UserDataManager {
    
    func getUser(sourceType: SourceType, parameter: UserParameter)
}

extension UserDataManager where Self: DataManager {
    
    func getUser(sourceType: SourceType, parameter: UserParameter) {
        switch sourceType {
        case .local:
            localManager.getObjects(type: TokenResponse.self, filter: "", sort: .asceding, completion: { (result) in
                
            })
            
        case .remote:
            remoteManager.makeAuthRequest(
                endpoint: EndpointType.getUser,
                handler: { result in
                    
            })
        }
    }
}
