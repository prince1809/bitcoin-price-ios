//
//  MarketPrice.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation


struct MarketPrice: Decodable {
    
    let values: [Value]
    
}

struct Value: Decodable {
    let xAxis: Int
    let yAxis: Float
    
    enum CodingKeys: String, CodingKey {
        case xAxis = "x"
        case yAxis = "y"
    }
}
