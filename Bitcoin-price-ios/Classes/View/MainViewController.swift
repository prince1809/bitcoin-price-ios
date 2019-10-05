//
//  MainViewController.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet private weak var headerView: HeaderView!
    @IBOutlet weak var bodyView: BodyView!
    @IBOutlet private weak var footerView: FooterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = UserDefaults.standard.reference()
        
        setupVariables()
        setupViews(reference: ref)
    }
    
    
    // MARK: Private
    
    private func setupVariables() {
        
    }
    
    private func setupViews(reference: ReferenceType) {
        headerView.delegate = self
    }

}
