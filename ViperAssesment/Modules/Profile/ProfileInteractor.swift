//
//  ProfileInteractor.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import Foundation

// MARK: ProfileInteractor: BaseInteractor

class ProfileInteractor: BaseInteractor {

    var output: ProfileInteractorOutputInterface?

    init(output: ProfileInteractorOutputInterface?) {
        self.output = output
    }
}

// MARK: ProfileInteractorInputInterface - Output Lifecycle Methods

extension ProfileInteractor: ProfileInteractorInputInterface {

    func outputDidLoad() {}

    func outputFinished() {
        disposibles.dispose()

        self.output = nil
    }

    func didSignOutClicked() {
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()

        output?.didSignOutFinished()
    }

}
