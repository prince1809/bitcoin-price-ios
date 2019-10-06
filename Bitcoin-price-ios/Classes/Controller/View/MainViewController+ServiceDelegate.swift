//
//  MainViewController+ServiceDelegate.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Charts
import UIKit

extension MainViewController: MarketPriceServiceDelegate {
    
    
    func marketPriceGetDidComplete(marketPrice: MarketPrice) {
        
    }
    
    func marketPriceGetDidComplete(failure: ServiceFailureType) {
        
    }
}
