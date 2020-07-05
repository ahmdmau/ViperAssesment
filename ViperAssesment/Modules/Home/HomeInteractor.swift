//
//  HomeInteractor.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

// MARK: HomeInteractor: BaseInteractor

class HomeInteractor: BaseInteractor {

    var output: HomeInteractorOutputInterface?

    init(output: HomeInteractorOutputInterface?) {
        self.output = output
    }
}

// MARK: HomeInteractorInputInterface - Output Lifecycle Methods

extension HomeInteractor: HomeInteractorInputInterface {

    func outputDidLoad() {}

    func outputFinished() {
        disposibles.dispose()

        self.output = nil
    }

}
