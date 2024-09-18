//
//  ColorExtension.swift
//  TestTiki
//
//  Created by VuPham on 17/9/24.
//

import UIKit

struct Color {
    static let white = Color.appColor(.white)
    static let black = Color.appColor(.black)
    static let clear = Color.appColor(.clear)
    
    static func appColor(_ name: AssetsColor) -> UIColor {
        return UIColor(named: name.rawValue)!
    }
}

extension Color {
    enum AssetsColor: String {
        case white = "White"
        case black = "Black"
        case clear = "Clear"
    }
}


