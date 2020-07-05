//
//  ProfileContract.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.

import UIKit

protocol ProfileViewInterface {
    var presenter: ProfilePresenterInterface? { get set }

    func setupUI()
}

protocol ProfilePresenterInterface: BasePresenterInterface {

    var view: ProfileViewInterface? { get set }
    var interactor: ProfileInteractorInputInterface? { get set }
    var wireframe: ProfileWireframeInterface? { get set }

    func didSignOutClicked()
}

protocol ProfileInteractorInputInterface: BaseInteractorInterface {
    var output: ProfileInteractorOutputInterface? { get set }

    func didSignOutClicked()
}

protocol ProfileInteractorOutputInterface {
    func didSignOutFinished()
}

protocol ProfileWireframeInterface: BaseWireframeInterface {
    func presentLoginScreen()
    
    static func buildModule() -> UIViewController
}
