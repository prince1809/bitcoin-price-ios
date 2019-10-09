//
//  RemoteConfig+Fetch.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/08.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Firebase

extension RemoteConfig {
    
    func fetch() {
        let expirationDuration = configSettings.isDeveloperModeEnabled ? 0 : 3600
        fetch(withExpirationDuration: TimeInterval(expirationDuration)) { (status, error) in
            if status == .success {
                debugPrint("Config fetched!")
                self.activateFetched()
            } else {
                debugPrint("Config not fetched")
                debugPrint("Error: \(error?.localizedDescription ?? "No error available.")")
            }
            
        }
    }
}
