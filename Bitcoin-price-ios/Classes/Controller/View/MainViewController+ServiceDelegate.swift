//
//  MainViewController+ServiceDelegate.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Charts
import NotificationBannerSwift
import UIKit

extension MainViewController: TickerServiceDelegate {
    
    func tickerGetDidComplete(ticker: Ticker, date: Date, fromCache: Bool) {
        bodyView.priceView.setPrice(ticker.USD.last, date: date)
        bodyView.priceView.spinnerView.hide()
        
        if fromCache {
            StatusBarNotificationBanner.noConnection.show()
        }
    }
    
    func tickerGetDidComplete(failure: ServiceFailureType) {
        bodyView.priceView.setPrice(0)
        bodyView.priceView.spinnerView.hide()
        
        switch failure {
        case .server:
            StatusBarNotificationBanner.serverFailure.show()
        case .connection:
            StatusBarNotificationBanner.noConnection.show()
        }
    }
}

extension MainViewController: MarketPriceServiceDelegate {
    
    
    func marketPriceGetDidComplete(marketPrice: MarketPrice) {
        let ref = UserDefaults.standard.reference()
        
        let firstPrice = marketPrice.values.first?.yAxis ?? 0
        let lastPrice = marketPrice.values.last?.yAxis ?? 0
        
        var values = [ChartDataEntry]()
        
        for value in marketPrice.values {
            let x = Double(value.xAxis)
            let y = Double(value.yAxis)
            values.append(ChartDataEntry(x: x, y: y))
        }
        
        bodyView.historyView.setLoaded(true)
        bodyView.historyView.setPrices(firstPrice: firstPrice, lastPrice: lastPrice)
        bodyView.historyView.setChartData(reference: ref, values: values)
        bodyView.historyView.spinnerView.hide()
    }
    
    func marketPriceGetDidComplete(failure: ServiceFailureType) {
        bodyView.historyView.setLoaded(true)
        bodyView.historyView.spinnerView.hide()
    }
}
