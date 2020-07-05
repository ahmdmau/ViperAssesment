//
//  ProfileWireframe.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class ProfileWireframe: ProfileWireframeInterface {

    weak var viewController: UIViewController?

    func presentLoginScreen() {
        let module = LoginWireframe.buildModule()

        self.viewController?.tabBarController?.hero.replaceViewController(with: module)
    }
}

extension ProfileWireframe {

    static func buildModule() -> UIViewController {
        let view = R.storyboard.profile.profileViewController()

        return build(view)
    }

    static func buildModuleFromUINavigation() -> UIViewController {
        let navigationController = R.storyboard.profile.profileNavigationController()
        let view = navigationController?.viewControllers.first as! ProfileViewController

        _ = build(view)

        return navigationController!
    }

    private static func build(_ view: ProfileViewController?) -> UIViewController  {
        let wireframe = ProfileWireframe()
        let presenter = ProfilePresenter(view: view)
        let interactor = ProfileInteractor(output: presenter)

        view?.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe

        interactor.output = presenter
        wireframe.viewController = view

        return view!
    }
}
