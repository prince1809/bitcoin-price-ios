//
//  TickerApiService.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/08.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Alamofire
import Foundation


class TickerApiService: ApiService {
    
    // MARK: - Public
    
    func get(success: @escaping (Data) -> Void,
             failure: @escaping (ServiceFailureType) -> Void) {
        
        _ = sessionManager.request(TickerApiRouter.get)
            .validate(statusCode: [200])
            .responseJSON { response in
                guard let data = response.data else {
                    failure(.connection)
                    return
                }
                
                if let error = response.error {
                    if error as? AFError == nil {
                        failure(.connection)
                    } else {
                        failure(.server)
                    }
                    return
                }
                
                success(data)
                
        }
    }
}
