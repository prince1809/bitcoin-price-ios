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
    
    @IBOutlet private weak var weekButton: Button!
    @IBOutlet private weak var monthButton: Button!
    @IBOutlet private weak var yearButton: Button!
    @IBOutlet private weak var allButton: Button!
    
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
    
    // MARK: - Public
    
    func setReference(_ type: ReferenceType) {
        unselectAll()
        let button: Button
        
        switch type {
        case .week: button = weekButton
        case .month: button = monthButton
        case .year: button = yearButton
        case .all: button = allButton
        }
        
        button.isSelected = true
    }
    
    @IBAction func buttonSelect(_ sender: Button) {
        unselectAll()
        sender.isSelected = true
        
        let type: ReferenceType
        
        if sender == weekButton {
            type = .week
        } else if sender == monthButton {
            type = .month
        } else if sender == yearButton {
            type = .year
        } else {
            type = .all
        }
        
        delegate?.footerViewButtonDidSelect(type: type)
    }
    
    // MARK: - Private
    
    private func unselectAll() {
        weekButton.isSelected = false
        monthButton.isSelected = false
        yearButton.isSelected = false
        allButton.isSelected = false
    }

}
