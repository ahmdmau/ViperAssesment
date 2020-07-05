//
//  DetailInteractor.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

// MARK: DetailInteractor: BaseInteractor

class DetailInteractor: BaseInteractor {

    var output: DetailInteractorOutputInterface?

    init(output: DetailInteractorOutputInterface?) {
        self.output = output
    }
}

// MARK: DetailInteractorInputInterface - Output Lifecycle Methods

extension DetailInteractor: DetailInteractorInputInterface {

    func outputDidLoad() {}

    func outputFinished() {
        disposibles.dispose()

        self.output = nil
    }

}
