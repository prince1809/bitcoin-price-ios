//
//  FooterView.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

protocol FooterViewDelegate: class {
    func footerViewButtonDidSelect(type: ReferenceType)
}

class FooterView: UIView {
    
    // MARK: Outlets
    
    @IBOutlet private weak var weekButton: UIButton!
    @IBOutlet private weak var monthButton: UIButton!
    @IBOutlet private weak var yearButton: UIButton!
    @IBOutlet private weak var allButton: UIButton!
    
    // MARK: - Variables
    
    weak var delegate: FooterViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        unselectAll()
        weekButton.setTitle(ReferenceType.week.rawValue.localized, for: .normal)
        monthButton.setTitle(ReferenceType.month.rawValue.localized, for: .normal)
        yearButton.setTitle(ReferenceType.year.rawValue.localized, for: .normal)
        allButton.setTitle(ReferenceType.all.rawValue.localized, for: .normal)
    }
    
    // MARK: - Private
    
    private func unselectAll() {
        weekButton.isSelected = false
        monthButton.isSelected = false
        yearButton.isSelected = false
        allButton.isSelected = false
    }

}
