//
//  UIView+Animations.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func heartAnimation() {
        let animation = CABasicAnimation(keyPath: "transform.scale")
        
        layer.add(animation, forKey: nil)
    }
    
    func shimmerAnimation() {
        
    }
}
