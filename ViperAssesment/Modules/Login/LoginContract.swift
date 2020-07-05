//
//  LoginContract.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

protocol LoginViewInterface: BaseViewInterface {
    var presenter: LoginPresenterInterface? { get set }
}

protocol LoginPresenterInterface: BasePresenterInterface {
    var view: LoginViewInterface? { get set }
    var interactor: LoginInteractorInputInterface? { get set }
    var wireframe: LoginWireframeInterface? { get set }

    func didLoginClicked(withEmail email: String, withPassword password: String)
}

protocol LoginInteractorInputInterface: BaseInteractorInterface {
    var output: LoginInteractorOutputInterface? { get set }

    func didLoginClicked(withEmail email: String, withPassword password: String)
}

protocol LoginInteractorOutputInterface {
    func didLoginSuccess()
    func didLoginError()
}

protocol LoginWireframeInterface: BaseWireframeInterface {
    func presentRootScreen()

    static func buildModule() -> UIViewController
}
