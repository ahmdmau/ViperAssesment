//
//  AuthManager.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class AuthManager {
    static let shared = AuthManager()

    func getRootControllerByUserStatus() -> UIViewController {
        let loginController = LoginWireframe.buildModule()
        let rootController = RootWireframe.buildModule()

        return UserDefaults.standard.isLoggedIn() ? rootController : loginController
    }
}
