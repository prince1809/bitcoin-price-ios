//
//  BodyHistoryView.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Charts
import UIKit

class BodyHistoryView: UIView {
    
    // MARK: - Outlet
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var referenceLabel: UILabel!
    @IBOutlet private weak var indicatorImageView: UIImageView!
    @IBOutlet private weak var percentLabel: UILabel!
    @IBOutlet private weak var chartView: ChartView!
    
    // MARK: - Variables
    
    var spinnerView = SpinnerView()
    
    
    // MARK: - UIView
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel.text = "body_history_view.price".localized
        self.referenceLabel.text = nil
        self.percentLabel.text = nil
        
        setLoaded(false)
    }
    
    // MARK: - Public
    
    func setLoaded(_ loaded: Bool) {
        self.titleLabel.isHidden = !loaded
        self.chartView.isHidden = !loaded
    }
    
    func setPrices(firstPrice: Float, lastPrice: Float) {
        
    }
    
    func setChartData(reference: ReferenceType, values: [ChartDataEntry]) {
        
    }
    
    // MARK: - Private
    
    private func setIndicatorImage(imageName: String?) {
        
    }
    
    private func setPercent(firstPrice: Float, lastPrice: Float, color: UIColor) {
        
    }
    
}
