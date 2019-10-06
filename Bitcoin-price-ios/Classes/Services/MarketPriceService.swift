//
//  MarketPriceService.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation

protocol MarketPriceServiceDelegate: class {
    func marketPriceGetDidComplete(marketPrice: MarketPrice)
    func marketPriceGetDidCOmplete(failure: ServiceFailureType)
}

class MarketPriceService: Service<MarketPrice> {
    
    // MARK: - Variable
    
   //private let apiService =
    
    // MARK: - Public
    
    func get(reference: ReferenceType, cachedDays days: Int = 0) {
        if let marketPrice = dbFetch(reference: reference, cachedDays: days) {
            
        }
    }
}
