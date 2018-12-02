//
//  PhotosDataManager.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 11/11/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

protocol PhotosDataManager {
    
    func getPhotos(sourceType: SourceType, parameter: LoginParameter)
}

extension PhotosDataManager where Self: DataManager {
    
    func getPhotos(sourceType: SourceType, parameter: LoginParameter) {
        switch sourceType {
        case .local:
            localManager.getObjects(type: TokenResponse.self, filter: "", sort: .asceding, completion: { (result) in
                
            })
            
        case .remote:
            remoteManager.makeAuthRequest(
                endpoint: EndpointType.getPhotos,
                handler: { result in
                    
            })
        }
    }
}
