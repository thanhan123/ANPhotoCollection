//
//  Endpoint.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 12/2/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

protocol Endpoint {
    var urlString: String { get }
}

enum EndpointType: Endpoint {
    case getPhotos
    case getToken
    case getUser
    case getCountry
    
    var urlString: String {
        switch self {
        case .getPhotos:
            return ""
            
        case .getToken:
            return ""
            
        case .getUser:
            return ""
            
        case .getCountry:
            return ""
        }
    }
    
}
