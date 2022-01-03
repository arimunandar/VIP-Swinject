//
//  RegisterViewController.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IRegisterViewController

protocol IRegisterViewController: AnyObject {
    // do someting...
}

// MARK: - RegisterViewController

class RegisterViewController: UIViewController {
    var interactor: IRegisterInteractor?
    var wireframe: IRegisterWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
        // do someting...
    }
}

// MARK: IRegisterViewController

extension RegisterViewController: IRegisterViewController {
    // do someting...
}

// MARK: RegisterViewControllerDelegate

extension RegisterViewController: RegisterViewControllerDelegate {
    // do someting...
}
