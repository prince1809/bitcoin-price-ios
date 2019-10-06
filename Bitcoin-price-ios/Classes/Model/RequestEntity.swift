//
//  RequestEntity.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation
import CoreData

@objc(RequestEntity)
class RequestEntity: NSManagedObject {
    
    @NSManaged var reference: String?
    @NSManaged var data: Data
    @NSManaged var date: Date
    
    // MARK: - Public
    
    class func fetchEntity() -> NSEntityDescription {
        return NSEntityDescription.entity(forEntityName: RequestEntity.className, in: CoreDataStack.shared.context)!
    }
    
    class func fetchRequest() -> NSFetchRequest<RequestEntity> {
        return NSFetchRequest<RequestEntity>(entityName: RequestEntity.className)
    }
    
    convenience init(reference: String?, data: Data, date: Date) {
        self.init(entity: RequestEntity.fetchEntity(), insertInto: CoreDataStack.shared.context)
        self.reference = reference
        self.data = data
        self.date = date
    }
}
