//
//  DetailWireframe.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class DetailWireframe: DetailWireframeInterface {

    weak var viewController: UIViewController?
}

extension DetailWireframe {

    static func buildModule() -> UIViewController {
        let wireframe = DetailWireframe()
        let view = R.storyboard.detailPage.detailViewController()
        let presenter = DetailPresenter(view: view)
        let interactor = DetailInteractor(output: presenter)

        view?.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe

        interactor.output = presenter
        wireframe.viewController = view

        return view!
    }
}
