//
//  MainViewController.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Outlet
    
    @IBOutlet private weak var headerView: HeaderView!
    @IBOutlet weak var bodyView: BodyView!
    @IBOutlet private weak var footerView: FooterView!
    
    // MARK: - Variable
    
    private let marketPriceService = MarketPriceService()
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = UserDefaults.standard.reference()
        
        setupVariables()
        setupViews(reference: ref)
    }
    
    // MARK: - Public
    
    func callMarketPriceService(reference: ReferenceType) {
        marketPriceService.get(reference: reference)
        
        if let historyView = bodyView.historyView {
            historyView.spinnerView.show(onView: historyView)
        }
    }
    
    
    // MARK: Private
    
    private func setupVariables() {
        
    }
    
    private func setupViews(reference: ReferenceType) {
        headerView.delegate = self
        footerView.delegate = self
        //footerView.setRefe
    }

}
