//
//  LocalDataManager.swift
//  ANPhotoCollection
//
//  Created by Dinh Thanh An on 12/2/18.
//  Copyright © 2018 Dinh Thanh An. All rights reserved.
//

import Foundation

protocol LocalDataManager {
    
    func getObjects<T>(type: T, filter: String, sort: SortType, completion: @escaping ([T]) -> ())
    func deleteObjects<T>(objects: [T])
    func createOrUpdateObjects<T>(objects: [T])
}

class RealmManager: LocalDataManager {
    
    func getObjects<T>(type: T, filter: String, sort: SortType, completion: @escaping ([T]) -> ()) {
        
    }
    
    func deleteObjects<T>(objects: [T]) {
        
    }
    
    func createOrUpdateObjects<T>(objects: [T]) {
        
    }
}
