//
//  TokenDataManager.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 10/27/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

protocol TokenDataManager {
    
    func getToken(sourceType: SourceType, parameter: LoginParameter)
}

extension TokenDataManager where Self: DataManager {
    
    func getToken(sourceType: SourceType, parameter: LoginParameter) {
        switch sourceType {
        case .local:
            localManager.getObjects(
                type: TokenResponse.self,
                filter: "",
                sort: .asceding,
                completion: { (result) in
                    
            })
            
        case .remote:
            remoteManager.makeAuthRequest()
        }
    }
}
