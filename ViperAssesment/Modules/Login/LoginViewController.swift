//
//  LoginViewController.swift
//  ViperAssesment
//
//  Created by Ahmad Maulana on 03/07/20.
//  Copyright © 2020 Ahmad Maulana. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    // MARK: - Outlet
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var loginBtn: UIButton!

    // MARK: - Properties
    var presenter: LoginPresenterInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Button Action
    @IBAction func loginBtnAction(_ sender: Any) {

        if emailTextField.text!.isEmpty {
            self.onError(message: "Email Required")
        } else if passwordTextField.text!.isEmpty {
            self.onError(message: "Password Required")
        } else {
            presenter?.didLoginClicked(withEmail: emailTextField.text!, withPassword: passwordTextField.text!)
        }
    }

}

extension LoginViewController: LoginViewInterface {
    func setupUI() {}
}
