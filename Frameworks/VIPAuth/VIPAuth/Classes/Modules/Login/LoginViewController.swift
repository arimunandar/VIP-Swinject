//
//  LoginViewController.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - ILoginViewController

protocol ILoginViewController: AnyObject {
    // do someting...
}

// MARK: - LoginViewController

class LoginViewController: UIViewController {
    var interactor: ILoginInteractor?
    var wireframe: ILoginWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
        // do someting...
    }
}

// MARK: ILoginViewController

extension LoginViewController: ILoginViewController {
    // do someting...
}

// MARK: LoginViewControllerDelegate

extension LoginViewController: LoginViewControllerDelegate {
    // do someting...
}
