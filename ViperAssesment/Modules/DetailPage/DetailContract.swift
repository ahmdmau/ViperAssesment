//
//  DetailContract.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.

import UIKit

protocol DetailViewInterface: BaseViewInterface {
    var presenter: DetailPresenterInterface? { get set }
}

protocol DetailPresenterInterface: BasePresenterInterface {

    var view: DetailViewInterface? { get set }
    var interactor: DetailInteractorInputInterface? { get set }
    var wireframe: DetailWireframeInterface? { get set }

}

protocol DetailInteractorInputInterface: BaseInteractorInterface {
    var output: DetailInteractorOutputInterface? { get set }

}

protocol DetailInteractorOutputInterface {

}

protocol DetailWireframeInterface: BaseWireframeInterface {

    static func buildModule() -> UIViewController
}
