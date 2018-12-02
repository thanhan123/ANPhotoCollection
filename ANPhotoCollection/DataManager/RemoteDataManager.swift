//
//  RemoteDataManager.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 12/2/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

typealias ResponseHandler = (Result) -> ()
protocol RemoteDataManager {
    
    func makeAuthRequest(endpoint: Endpoint, handler: ResponseHandler)
}

class JSONRemoteManager: RemoteDataManager {
    
    func makeAuthRequest(endpoint: Endpoint, handler: ResponseHandler) {
        
    }
}
