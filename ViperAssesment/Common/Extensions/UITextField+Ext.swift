//
//  UITextField+Ext.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 02/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

extension UITextField {

    @IBInspectable var xibPlaceholderLocKey: String? {
        get { return nil }
        set(key) {
            self.placeholder = key?.localized
        }
    }
}
