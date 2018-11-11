//
//  CountryDataManager.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 10/27/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

protocol CountryDataManager {
    
    func getCountry(sourceType: SourceType, parameter: CountryParameter)
}

extension CountryDataManager where Self: DataManager {
    
    func getCountry(sourceType: SourceType, parameter: CountryParameter) {
        switch sourceType {
        case .local:
            localManager.getObjects(type: TokenResponse.self, filter: "", sort: .asceding, completion: { (result) in
                
            })
            
        case .remote:
            remoteManager.makeAuthRequest()
        }
    }
}
