//
//  RootWireframe.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class RootWireframe: RootWireframeInterface {

    weak var viewController: UIViewController?
}

extension RootWireframe {

    static func buildModule() -> UIViewController {
        let wireframe = RootWireframe()
        let tabs = RootTabBarWireframe.buildTabs()
        let view = RootViewController(tabs: tabs)
        let presenter = RootPresenter(view: view)
        let interactor = RootInteractor(output: presenter)

        view.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe

        interactor.output = presenter
        wireframe.viewController = view

        return view
    }
}
