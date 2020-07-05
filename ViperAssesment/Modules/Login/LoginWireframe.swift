//
//  LoginWireframe.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class LoginWireframe: LoginWireframeInterface {

    weak var viewController: UIViewController?

    func presentRootScreen() {
        let module = RootWireframe.buildModule()

        self.viewController?.hero.replaceViewController(with: module)
    }

    static func buildModule() -> UIViewController {
        let wireframe = LoginWireframe()
        let view = R.storyboard.login.loginViewController()
        let presenter = LoginPresenter(view: view)
        let interactor = LoginInteractor(output: presenter)

        view?.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe

        interactor.output = presenter
        wireframe.viewController = view

        return view!
    }

}
