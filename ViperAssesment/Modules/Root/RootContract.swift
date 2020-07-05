//
//  RootContract.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.

import UIKit

protocol RootViewInterface {
    var presenter: RootPresenterInterface? { get set }

    func setupUI()
}

protocol RootPresenterInterface: BasePresenterInterface {

    var view: RootViewInterface? { get set }
    var interactor: RootInteractorInputInterface? { get set }
    var wireframe: RootWireframeInterface? { get set }

}

protocol RootInteractorInputInterface: BaseInteractorInterface {
    var output: RootInteractorOutputInterface? { get set }

}

protocol RootInteractorOutputInterface {

}

protocol RootWireframeInterface: BaseWireframeInterface {

    static func buildModule() -> UIViewController
}
