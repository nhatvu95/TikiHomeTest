//
//  PaddingLabel.swift
//  TestTiki
//
//  Created by VuPham on 17/9/24.
//

import UIKit

@IBDesignable open class PaddingLabel: UILabel {
    
    @IBInspectable open var topInset: CGFloat = 4.0
    @IBInspectable open var bottomInset: CGFloat = 4.0
    @IBInspectable open var leftInset: CGFloat = 4.0
    @IBInspectable open var rightInset: CGFloat = 4.0
    
    open override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }
    
    open override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + leftInset + rightInset,
                      height: size.height + topInset + bottomInset)
    }
}
