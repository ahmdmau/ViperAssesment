//
//  BaseInteractor.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 02/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import Foundation
import RxSwift

class BaseInteractor {

    var disposibles: CompositeDisposable

    init() {
        disposibles = CompositeDisposable()
    }

    func add(_ d: Disposable?) {
        if (d == nil) { return }

        _ = disposibles.insert(d!)
    }
}
