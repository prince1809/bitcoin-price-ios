//
//  CoreDataStack.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import CoreData

class CoreDataStack {
    
    private let containerName = "BitPrice"
    static let shared = CoreDataStack()
    
    private init() { }
    
    // MARK: - Variable
    
    lazy var context: NSManagedObjectContext = {
        if #available(iOS 10, *) {
            return persistentContainer.viewContext
        } else {
            return managedObjectContext
        }
    }()
    
    
    // MARK: - Core Data stack for iOS 10+
    @available(iOS 10.0, *)
    private lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores(completionHandler: { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    
    // MARK: - Core Data Stack for iOS 9+
    
    private lazy var managedObjectContext: NSManagedObjectContext = {
        var managedObjectContext = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        return managedObjectContext
    }()
}
