//
//  Localizable+Interfaces.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 02/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

protocol Localizable {
    var localized: String { get }
}

extension String: Localizable {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

protocol XIBLocalizable {
    var xibLocKey: String? { get set }
}
