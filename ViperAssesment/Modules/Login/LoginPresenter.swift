//
//  LoginPresenter.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

class LoginPresenter {

    var view: LoginViewInterface?
    var interactor: LoginInteractorInputInterface?
    var wireframe: LoginWireframeInterface?

    init(view: LoginViewInterface?) {
        self.view = view
    }

}

extension LoginPresenter: LoginPresenterInterface {

    func viewDidLoad() {}
    func viewDidDisappear(_ animated: Bool) {}
    func viewWillAppear(_ animated: Bool) {}
    func viewWillDisappear(_ animated: Bool) {}

    func didLoginClicked(withEmail email: String, withPassword password: String) {
        view?.showActivityIndicator()
        interactor?.didLoginClicked(withEmail: email, withPassword: password)
    }
}

extension LoginPresenter: LoginInteractorOutputInterface {

    func didLoginSuccess() {
        view?.hideActivityIndicator()
        wireframe?.presentRootScreen()
    }

    func didLoginError() {
        view?.hideActivityIndicator()
    }

}
