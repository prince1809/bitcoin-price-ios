//
//  StatusBarNotificationBanner+App.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/08.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import NotificationBannerSwift

extension StatusBarNotificationBanner {
    
    class var noConnection: StatusBarNotificationBanner {
        let title = "banner.no_connection".localized
        return StatusBarNotificationBanner(title: title, style: .info, colors: BannerColors())
    }
    
    class var serverFailure: StatusBarNotificationBanner {
        let title = "banner.server_failure".localized
        return StatusBarNotificationBanner(title: title, style: .danger, colors: BannerColors())
    }
}
