//
//  RootInteractor.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

// MARK: RootInteractor: BaseInteractor

class RootInteractor: BaseInteractor {

    var output: RootInteractorOutputInterface?

    init(output: RootInteractorOutputInterface?) {
        self.output = output
    }
}

// MARK: RootInteractorInputInterface - Output Lifecycle Methods

extension RootInteractor: RootInteractorInputInterface {

    func outputDidLoad() {}

    func outputFinished() {
        disposibles.dispose()

        self.output = nil
    }

}
