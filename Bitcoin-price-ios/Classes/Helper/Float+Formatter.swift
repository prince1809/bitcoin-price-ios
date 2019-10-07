//
//  Float+Formatter.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/07.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation

extension Float {
    
    
    func toPercentString() -> String {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .percent
        formatter.usesGroupingSeparator = true
        formatter.maximumFractionDigits = 1
        
        let number = NSNumber(value: self)
        return formatter.string(from: number) ?? "\(self)"
    }
    
    func toCurrencyString(fractionDigits: Int? = nil) -> String {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.currencySymbol = "$"
        formatter.numberStyle = .currencyAccounting
        formatter.usesGroupingSeparator = true
        
        if let fractionDigits = fractionDigits {
            formatter.minimumFractionDigits = fractionDigits
            formatter.maximumFractionDigits = fractionDigits
        } else {
            formatter.minimumFractionDigits = 2
            formatter.maximumFractionDigits = 2
        }
        
        let number = NSNumber(value: self)
        return formatter.string(from: number) ?? "\(self)"
    }
}
