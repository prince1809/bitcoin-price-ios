//
//  Ticker.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/08.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation

struct Ticker: Decodable {
    
    let USD: TickerItem
    
    struct TickerItem: Decodable {
        let last: Float
    }
}

