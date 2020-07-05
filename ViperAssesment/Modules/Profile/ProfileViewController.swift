//
//  ProfileViewController.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright (c) 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, ProfileViewInterface {

    // MARK: - Outlets
    @IBOutlet weak var nameLbl: UILabel!

    // MARK: - Properties
    var presenter: ProfilePresenterInterface?

    // MARK: - Action Outlet
    @IBAction func btnLogoutAction(_ sender: UIButton) {
        presenter?.didSignOutClicked()
    }


}

extension ProfileViewController {

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

    func setupUI() {
        title = R.string.localizable.profileTitle()

        let name = UserDefaults.standard.getEmail()
        nameLbl.text = name
    }
}
