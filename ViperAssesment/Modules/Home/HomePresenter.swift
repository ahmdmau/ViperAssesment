//
//  HomePresenter.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

// MARK: HomePresenter

class HomePresenter {

    var view: HomeViewInterface?
    var interactor: HomeInteractorInputInterface?
    var wireframe: HomeWireframeInterface?

    init(view: HomeViewInterface?) {
        self.view = view
    }

}

// MARK: HomePresenterInterface
extension HomePresenter: HomePresenterInterface {

    func viewDidLoad() {
        self.view?.setupUI()
    }

    func viewDidDisappear(_ animated: Bool) {
        self.interactor?.outputFinished()
    }

    func viewWillAppear(_ animated: Bool) {
    }

    func viewWillDisappear(_ animated: Bool) {}

}

// MARK: HomePresenterInterface - User click methods
extension HomePresenter {
    func didSelectItem() {
        wireframe?.presentDetails()
    }
}

// MARK: HomeInteractorOutputInterface
extension HomePresenter: HomeInteractorOutputInterface {}

