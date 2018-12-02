//
//  DataManager.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 10/27/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

enum SourceType {
    case remote
    case local
}

enum SortType{
    case asceding
    case deceding
}

protocol DataManager {
    
    var remoteManager: RemoteDataManager { get }
    var localManager: LocalDataManager  { get }
}

class FlickrDataManager: DataManager {
    
    let remoteManager: RemoteDataManager
    let localManager: LocalDataManager
    
    init(remoteManager: RemoteDataManager,
         localManager: LocalDataManager) {
        self.remoteManager = remoteManager
        self.localManager = localManager
    }
}

extension FlickrDataManager: TokenDataManager, UserDataManager, CountryDataManager {}
