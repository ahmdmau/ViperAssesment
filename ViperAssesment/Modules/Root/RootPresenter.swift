//
//  RootPresenter.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

// MARK: RootPresenter

class RootPresenter {

    var view: RootViewInterface?
    var interactor: RootInteractorInputInterface?
    var wireframe: RootWireframeInterface?

    init(view: RootViewInterface?) {
        self.view = view
    }

}

// MARK: RootPresenterInterface

extension RootPresenter: RootPresenterInterface {

    func viewDidLoad() {
        self.view?.setupUI()
    }

    func viewDidDisappear(_ animated: Bool) {
        self.interactor?.outputFinished()
    }

    func viewWillAppear(_ animated: Bool) {}

    func viewWillDisappear(_ animated: Bool) {}

}

// MARK: RootInteractorOutputInterface

extension RootPresenter: RootInteractorOutputInterface {

}

