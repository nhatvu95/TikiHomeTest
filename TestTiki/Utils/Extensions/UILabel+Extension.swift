//  UILabel+Extension.swift
//  TestTiki
//
//  Created by Vu PHam on 17/9/24.
//

import Foundation
import UIKit

extension UILabel {
    func getAttributedLabelSize(width: CGFloat = UIScreen.main.bounds.size.width, height: CGFloat = CGFloat.greatestFiniteMagnitude) -> CGSize {
            
            if let currentAttributedString = self.attributedText {
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineHeightMultiple = 1.3
                paragraphStyle.alignment = .left
                
                let size: CGSize = currentAttributedString.boundingRect(with: CGSize(width: width, height: height),
                                                                     options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                                                     context: nil).size
                self.sizeToFit()
                
                return size
            }
            
            return CGSize.zero
        }
}
