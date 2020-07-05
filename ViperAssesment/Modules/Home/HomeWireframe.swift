//
//  HomeWireframe.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class HomeWireframe: HomeWireframeInterface {

    weak var viewController: UIViewController?

    func presentDetails() {
        let detailController = DetailWireframe.buildModule()

        self.viewController?.navigationController?.present(detailController, animated: true, completion: nil)
    }
}

extension HomeWireframe {

    static func buildModule() -> UIViewController {
        let view = R.storyboard.home.homeViewController()

        return build(view)
    }

    static func buildModuleFromUINavigation() -> UIViewController {
        let navigationController = R.storyboard.home.homeNavigationController()
        let view = navigationController?.viewControllers.first as! HomeViewController

        _ = build(view)

        return navigationController!
    }

    private static func build(_ view: HomeViewController?) -> UIViewController {
        let wireframe = HomeWireframe()
        let presenter = HomePresenter(view: view)
        let interactor = HomeInteractor(output: presenter)

        view?.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe

        interactor.output = presenter
        wireframe.viewController = view

        return view!
    }
}
