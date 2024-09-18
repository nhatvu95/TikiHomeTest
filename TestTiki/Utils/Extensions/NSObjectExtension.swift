//
//  NSObject.swift
//  TestTiki
//
//  Created by VuPham on 17/9/24.
//

import Foundation

extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}
