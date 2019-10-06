//
//  ChartView.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/06.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Charts
import UIKit

class ChartView: LineChartView {
    
    // MARK: - LineChartView
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupNoData()
        setupLeftAxis()
        setupXAxis()
        
        chartDescription?.enabled = false
        rightAxis.enabled = false
        legend.enabled = false
        isUserInteractionEnabled = false
    }
    
    // MARK: - Public
    
    func setData(values: [ChartDataEntry]) {
        let line = self.line(values: values)
        
        let data = LineChartData()
        data.addDataSet(line)
        
        self.data = data
    }
    
    // MARK: - Private
    
    private func line(values: [ChartDataEntry]) -> LineChartDataSet {
        let color = UIColor.App.purple
        let line = LineChartDataSet(entries: values, label: nil)
        
        line.setColor(color)
        line.setCircleColor(color)
        line.lineWidth = 3
        line.drawCirclesEnabled = false
        line.drawValuesEnabled = false
        
        return line
    }
    
    private func setupNoData() {
       // noDataFont = UIFont.appFont(ofSize: 20)
        noDataTextColor = UIColor.App.black
        noDataText = "chart_view.no_data".localized
    }
    
    private func setupLeftAxis() {
        setupAxis(leftAxis)
        //leftAxis.labelFont =
        leftAxis.valueFormatter = DefaultAxisValueFormatter.with(block: { value, _ -> String in
            return Float(value).toCurrencyString(fractionDigits: 0)
        })
    }
    
    private func setupXAxis() {
        setupAxis(xAxis)
        xAxis.labelPosition = .bottom
        
        xAxis.valueFormatter = DefaultAxisValueFormatter.with(block: { value, _ -> String in
            let dateFormat = "chart_view.date_format".localized
            return Date(timeIntervalSince1970: value).toString(dateFormat: dateFormat)
        })
    }
    
    private func setupAxis(_ axis: AxisBase) {
        axis.gridColor = UIColor.App.lightGray
        axis.labelTextColor = UIColor.App.purple
        axis.axisLineColor = UIColor.clear
    }
}
