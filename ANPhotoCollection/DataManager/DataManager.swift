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
    
    var remoteManager: RemoteManager { get }
    var localmanager: LocalManager  { get }
}

class FlickrDataManager: DataManager {
    
    let remoteManager: RemoteManager
    let localmanager: LocalManager
    
    init(remoteManager: RemoteManager,
         localmanager: LocalManager) {
        self.remoteManager = remoteManager
        self.localmanager = localmanager
    }
}

extension FlickrDataManager: TokenDataManager, UserDataManager, CountryDataManager {}

// ======================
protocol RemoteManager {
    
    func makePublicRequest()
    func makeAuthRequest()
}

class JSONRemoteManager: RemoteManager {
    
    func makeAuthRequest() {
        
    }
    
    func makePublicRequest() {
        
    }
}

// ======================
protocol LocalManager {
    
    func getObjects<T>(type: T, filter: String, sort: SortType, completion: @escaping ([T]) -> ())
    func deleteObjects<T>(objects: [T])
    func createOrUpdateObjects<T>(objects: [T])
}

class RealmManager: LocalManager {
    
    func getObjects<T>(type: T, filter: String, sort: SortType, completion: @escaping ([T]) -> ()) {
        
    }
    
    func deleteObjects<T>(objects: [T]) {
        
    }
    
    func createOrUpdateObjects<T>(objects: [T]) {
        
    }
}
