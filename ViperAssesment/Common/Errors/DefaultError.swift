//
//  DefaultError.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

class DefaultError: Error {

    var message: String!

    init(message: String) {
        self.message = message
    }
}
