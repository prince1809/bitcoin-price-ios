//
//  NSObject+ClassName.swift
//  Bitcoin-price-ios
//
//  Created by Prince Kumar on 2019/10/05.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import Foundation

extension NSObject {

    class var className: String {
        return String(describing: self).components(separatedBy: ".").last!
    }

    var className: String {
        return String(describing: type(of: self)).components(separatedBy: ".").last!
    }

}
