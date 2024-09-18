//
//  UserDefaultExtension.swift
//  TestTiki
//
//  Created by VuPham on 17/9/24.
//

import Foundation
extension UserDefaults {
    subscript<T>(key: String) -> T? {
        get {
            return value(forKey: key) as? T
        }
        set {
            set(newValue, forKey: key)
        }
    }
}
