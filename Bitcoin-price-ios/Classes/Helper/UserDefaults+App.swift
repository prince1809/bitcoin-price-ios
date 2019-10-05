//
//  UserDefaults+App.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation
import UIKit

extension UserDefaults {
    
    
    private struct key {
        static let referenceType = "reference"
    }
    
    // MARK: - Reference
    
    func reference() -> ReferenceType {
        let storedValue = value(forKey: key.referenceType)
        var type: ReferenceType?
        
        if let storedValue = storedValue {
            let value = storedValue as? String ?? ReferenceType.week.rawValue
            type = ReferenceType(rawValue: value)
        }
        
        return type ?? ReferenceType.week
    }
    
    func setReference(_ type: ReferenceType) {
        set(type.rawValue, forKey: key.referenceType)
    }
}
