//
//  MarketPriceApiRouter.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Alamofire
import Foundation


enum MarketPriceApiRouter: URLRequestConvertible {
    
    
    // MARK: - Router
    
    case get([String: String])
    
    // MARK: - URLRequestConvertible
    
    func asURLRequest() throws -> URLRequest {
        var urlRequest = URLRequest(url: ApiService.Params.baseUrl.appendingPathComponent(path))
        urlRequest.httpMethod = methood.rawValue
        
        switch self {
        case .get(let params):
            urlRequest = try URLEncoding.default.encode(urlRequest, with: params)
        }
        return urlRequest
    }
    
    private var methood: HTTPMethod {
        switch self {
        case .get: return .get
        }
    }
    
    private var path: String {
        switch self {
        case .get:
            return "/charts/market-price"
        }
    }
}
