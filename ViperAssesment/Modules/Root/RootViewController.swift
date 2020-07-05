//
//  RootViewController.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController, RootViewInterface {

    // MARK: - Properties
    var presenter: RootPresenterInterface?

    init(tabs: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)

        viewControllers = tabs

        self.hero.isEnabled = true
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}

extension RootViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.presenter?.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.presenter?.viewDidLoad()

    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        self.presenter?.viewDidDisappear(animated)
    }
}

extension RootViewController {

    func setupUI() {

    }
}
