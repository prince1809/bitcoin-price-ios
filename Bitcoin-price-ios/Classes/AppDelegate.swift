//
//  AppDelegate.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/04.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Firebase
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        RemoteConfig.remoteConfig().fetch()
    }
}

