//
//  Date+Components.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation

extension Date {
    
    var startOfBitcoin: Date {
        return Date.fromString("2009-01-03", dateFormat: "yyyy-MM-dd")
    }
}
