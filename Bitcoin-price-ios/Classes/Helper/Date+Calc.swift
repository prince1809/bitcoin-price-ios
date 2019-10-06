//
//  Date+Calc.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation

extension Date {
    
    // MARK: Public
    
    func days(from: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: from, to: self).day ?? 0
    }
    
    func minus(days: Int) -> Date {
        return self.addComponentsToDate(days: -days)
    }
    
    // MARK: Privates
    
    private func addComponentsToDate(days: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.day = days
        return Calendar.current.date(byAdding: dateComponents, to: self)!
    }
}
