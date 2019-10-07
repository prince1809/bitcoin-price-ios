//
//  SpinnerBiew.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

class SpinnerView: UIView {
    
    private let indicatorView = UIActivityIndicatorView(style: .gray)
    
    func show(onView: UIView) {
        backgroundColor = onView.backgroundColor
        
        frame = onView.frame
        frame.origin.x = 0
        frame.origin.y = 0
        
        indicatorView.center = center
        indicatorView.startAnimating()
        onView.addSubview(self)
        
        self.alpha = 0
        indicatorView.isHidden = true
        
        UIView.animate(withDuration: 0.25, animations: {
            self.alpha = 1
        }, completion: { _ in
            self.indicatorView.isHidden = false
            self.addSubview(self.indicatorView)
        })
    }
    
    func hide() {
        if indicatorView.isHidden {
            self.removeFromSuperview()
            return
        }
        
        self.alpha = 1
        
        UIView.animate(withDuration: 0.25, animations: {
            self.alpha = 0
        }, completion: { _ in
            self.indicatorView.stopAnimating()
            self.removeFromSuperview()
        })
    }

}
