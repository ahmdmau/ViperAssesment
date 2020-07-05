//
//  DetailPresenter.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

// MARK: DetailPresenter

class DetailPresenter {

    var view: DetailViewInterface?
    var interactor: DetailInteractorInputInterface?
    var wireframe: DetailWireframeInterface?

    init(view: DetailViewInterface?) {
        self.view = view
    }

}

// MARK: DetailPresenterInterface

extension DetailPresenter: DetailPresenterInterface {

    func viewDidLoad() {
        self.view?.setupUI()
    }

    func viewDidDisappear(_ animated: Bool) {
        self.interactor?.outputFinished()
    }

    func viewWillAppear(_ animated: Bool) {}

    func viewWillDisappear(_ animated: Bool) {}

}

// MARK: DetailInteractorOutputInterface

extension DetailPresenter: DetailInteractorOutputInterface {

}

