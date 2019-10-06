//
//  RequestDbService.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import CoreData
import Foundation

class RequestDbService {
    
    // MARK: - Public
    
    func insert(reference: ReferenceType?, data: Data, date: Date) {
        
    }
    
    func fetch(reference: ReferenceType?) -> RequestEntity? {
        let context = CoreDataStack.shared.context
        var request: RequestEntity?
        
        let fetchRequest: NSFetchRequest<RequestEntity> = RequestEntity.fetchRequest()
        fetchRequest.fetchLimit = 1
        
        if let reference = reference {
            fetchRequest.predicate = NSPredicate(format: "reference = %@", reference.rawValue)
        } else {
            fetchRequest.predicate = NSPredicate(format: "reference = nil")
        }
        
        do {
            request = try context.fetch(fetchRequest).first as RequestEntity?
        } catch let error {
            debugPrint("error: \(error)")
        }
        return request
    }
    
    func delete(reference: ReferenceType?) {
        
    }
    
    func delete() {
        
    }
}
