//
//  UIButton+Ext.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 02/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

extension UIButton: XIBLocalizable {

    @IBInspectable var isRounded: Bool {
        set {
            if newValue {
                self.layer.cornerRadius = self.bounds.width / 2
            } else {
                self.layer.cornerRadius = 0
            }
        }
        get {
            return false
        }
    }

    @IBInspectable var xibLocKey: String? {
        get { return nil }
        set(key) {
            setTitle(key?.localized, for: .normal)
        }
    }

    @IBInspectable var imageColor: UIColor? {
        get { return nil }
        set(color) {
            guard let imageColor = color else { return }

            self.imageView?.setImageColorBy(uiColor: imageColor)
        }
    }
}
