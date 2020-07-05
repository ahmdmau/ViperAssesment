//
//  BaseContract.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 02/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import Foundation
import UIKit

protocol BaseViewInterface {

    func setupUI()
    func hideNavigationBar(_ animated: Bool)
    func showNavigationBar(_ animated: Bool)
    func setupScreenTableView(tableView: UITableView)
    func onError(message: String)
    func showActivityIndicator()
    func hideActivityIndicator()
}

protocol BasePresenterInterface {

    func viewDidLoad()
    func viewDidDisappear(_ animated: Bool)
    func viewWillAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
}

protocol BaseInteractorInterface {

    func outputDidLoad()
    func outputFinished()
}

protocol BaseWireframeInterface {

    var viewController: UIViewController? { get set }
}
