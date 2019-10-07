//
//  UIView+Shadow.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

extension UIView {
    
    func addShadow() {
        
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 3
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.125
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowRadius = 0.5
    }
}
