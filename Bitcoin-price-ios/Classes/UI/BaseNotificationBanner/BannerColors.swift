//
//  BannerColors.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/08.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import NotificationBannerSwift

class BannerColors: BannerColorsProtocol {
    
    func color(for style: BannerStyle) -> UIColor {
        switch style {
        case .danger:
            return UIColor.App.red
        default:
            return UIColor.App.purple
        }
    }
}
