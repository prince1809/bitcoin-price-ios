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
    
    // MARK: - Outlet
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: - Variable
    
    weak var delegate: HeaderViewDelegate?
    
    // MARK: UIView
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.titleLabel.text = "body_price_view.title".localized
    }
    
    @IBAction func refreshSelect(_ sender: UIButton) {
        sender.heartAnimation()
        delegate?.headerViewRefreshDidSelect()
    }

}
