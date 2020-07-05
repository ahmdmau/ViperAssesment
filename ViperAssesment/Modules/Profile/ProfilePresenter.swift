//
//  ProfilePresenter.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

// MARK: ProfilePresenter

class ProfilePresenter {

    var view: ProfileViewInterface?
    var interactor: ProfileInteractorInputInterface?
    var wireframe: ProfileWireframeInterface?

    init(view: ProfileViewInterface?) {
        self.view = view
    }

}

// MARK: ProfilePresenterInterface

extension ProfilePresenter: ProfilePresenterInterface {
    func viewDidLoad() {
        self.view?.setupUI()
    }

    func viewDidDisappear(_ animated: Bool) {
        self.interactor?.outputFinished()
    }

    func viewWillAppear(_ animated: Bool) {}

    func viewWillDisappear(_ animated: Bool) {}

    func didSignOutClicked() {
        interactor?.didSignOutClicked()
    }

}

// MARK: ProfileInteractorOutputInterface

extension ProfilePresenter: ProfileInteractorOutputInterface {
    func didSignOutFinished() {
        wireframe?.presentLoginScreen()
    }
}

