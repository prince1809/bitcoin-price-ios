//
//  Service.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation

class Service<T: Decodable> {
    
    // MARK: - Variables
    
    private let dbService = RequestDbService()
    
    // MARK: Public
    
    func jsonDecode(data: Data) -> T? {
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            return nil
        }
    }
    
    
    func dbFetch(reference: ReferenceType, cachedDays days: Int? = nil) -> T? {
        guard let request = dbService.fetch(reference: reference) else { return nil }
        
        guard let days = days else {
            return jsonDecode(data: request.data)
        }
        
        if Date().days(from: request.date) <= days {
            return jsonDecode(data: request.data)
        }
        
        return nil
    }
    
    func dbInsert(reference: ReferenceType? = nil, data: Data, date: Date = Date()) {
        dbService.insert(reference: reference, data: data, date: date)
    }
}

enum ServiceFailureType {
    case connection
    case server
}
