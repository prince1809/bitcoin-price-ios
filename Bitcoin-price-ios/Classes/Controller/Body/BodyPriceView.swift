//
//  BodyPriceView.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

class BodyPriceView: UIView {
    
    // MARK: - Outlet
    
    @IBOutlet private weak var updatedLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    
    // MARK: - Variables
    
    var spinnerView = SpinnerView()
    
    // MARK: - UIView
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.updatedLabel.text = "-"
        self.priceLabel.text = "-"
    }
    
    // MARK: - Public
    
    func setPrice(_ price: Float, date: Date? = nil) {
        self.priceLabel.text = price.toCurrencyString()
        self.priceLabel.shimmerAnimation()
        
        if let date = date {
            setUpdated(date: date)
        }
    }
    
    // MARK: - Private
    
    private func setUpdated(date: Date) {
        let dateFormat = "body_price_view.date_format".localized
        self.updatedLabel.text = date.toString(dateFormat: dateFormat)
        self.updatedLabel.shimmerAnimation()
    }

}
