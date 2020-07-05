//
//  HomeContract.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.

import UIKit

protocol HomeViewInterface: BaseViewInterface {
    var presenter: HomePresenterInterface? { get set }
}

protocol HomePresenterInterface: BasePresenterInterface {

    var view: HomeViewInterface? { get set }
    var interactor: HomeInteractorInputInterface? { get set }
    var wireframe: HomeWireframeInterface? { get set }

    func didSelectItem()
}

protocol HomeInteractorInputInterface: BaseInteractorInterface {
    var output: HomeInteractorOutputInterface? { get set }

}

protocol HomeInteractorOutputInterface {

}

protocol HomeWireframeInterface: BaseWireframeInterface {
    func presentDetails()

    static func buildModule() -> UIViewController
}
