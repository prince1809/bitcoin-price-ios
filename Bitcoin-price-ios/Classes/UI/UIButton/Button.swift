//
//  Button.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

class Button: UIButton {
    
    // MARK: Variable
    
    override var isHighlighted: Bool {
        didSet {
            let alpha: CGFloat = isHighlighted ? 0.25 : 1
            backgroundColor = backgroundColor?.withAlphaComponent(alpha)
        }
    }
    
    override var isSelected: Bool {
        didSet {
            let color: UIColor
            
            if isSelected {
                color = UIColor.App.purple
            } else {
                color = UIColor.App.white
            }
            
            backgroundColor = color
        }
    }
    
    // MARK: - UIButton
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addShadow()
    }
}
