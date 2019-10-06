//
//  Bundle+InfoPlist.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation


extension Bundle {
    
    func apiBaseUrl() -> String {
        return object(forInfoDictionaryKey: "ApiBaseUrl") as? String ?? ""
    }
}
