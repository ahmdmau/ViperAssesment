//
//  UILabel+Ext.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 02/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

extension UILabel {
    func setText(_ text: String?, defaultText: String) {
        self.text = text == nil ? defaultText : text
    }
}

extension UILabel: XIBLocalizable {
    @IBInspectable var xibLocKey: String? {
        get { return nil }
        set(key) {
            text = key?.localized
        }
    }
}

