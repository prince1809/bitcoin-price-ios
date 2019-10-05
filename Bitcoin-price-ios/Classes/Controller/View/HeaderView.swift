//
//  HeaderView.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

protocol HeaderViewDelegate: class {
    func headerViewRefreshDidSelect()
}

class HeaderView: UIView {
    
    // MARK: - Outlets
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: variables
    
    weak var delegate: HeaderViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.titleLabel.text = "Bitcoin Price"
    }
    
    @IBAction func refreshSelect(_ sender: UIButton) {
        sender.heartAnimation()
        delegate?.headerViewRefreshDidSelect()
    }
}
