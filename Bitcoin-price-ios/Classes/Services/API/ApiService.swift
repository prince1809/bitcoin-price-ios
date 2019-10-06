//
//  ApiService.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Alamofire
import Foundation

class ApiService {
    
    // MARK: - Variable
    
    let sessionManager: SessionManager = {
        let conf = URLSessionConfiguration.default
        
        conf.timeoutIntervalForRequest = Params.timeout
        conf.timeoutIntervalForResource = Params.timeout
        
        return SessionManager(configuration: conf)
    }()
    
    // MARK: - Other
    
    struct Params {
        static let baseUrl = URL(string: Bundle.main.apiBaseUrl())!
        static let timeout: Double = 15
    }
}
