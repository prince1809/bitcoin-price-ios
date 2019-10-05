//
//  Date+Formatter.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation

extension Date {
    
    static func fromString(_ string: String, dateFormat: String) -> Date {
        let formatter = DateFormatter()
        
        formatter.locale = Locale.current
        formatter.dateFormat = dateFormat
        
        return formatter.date(from: string)!
    }
    
    func toString(dateFormat: String) -> String {
        let formatter = DateFormatter()
        
        formatter.locale = Locale.current
        formatter.dateFormat = dateFormat
        
        return formatter.string(from: self)
    }
    
    
}
