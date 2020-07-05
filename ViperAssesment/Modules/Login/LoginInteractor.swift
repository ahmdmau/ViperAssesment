//
//  LoginInteractor.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

class LoginInteractor: BaseInteractor {
    var output: LoginInteractorOutputInterface?

    init(output: LoginInteractorOutputInterface?) {
        self.output = output
    }
}

extension LoginInteractor: LoginInteractorInputInterface {
    func didLoginClicked(withEmail email: String, withPassword password: String) {
        UserDefaults.standard.setEmail(value: email)
        UserDefaults.standard.setLoggedIn(value: true)

        self.output?.didLoginSuccess()
    }

    func outputDidLoad() {}
    func outputFinished() {}
}
