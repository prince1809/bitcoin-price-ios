//
//  MainViewController+HeaderDelegate.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

extension MainViewController: HeaderViewDelegate {
    
    func headerViewRefreshDidSelect() {
        let ref = UserDefaults.standard.reference()
        callMarketPriceService(reference: ref)
    }
}
