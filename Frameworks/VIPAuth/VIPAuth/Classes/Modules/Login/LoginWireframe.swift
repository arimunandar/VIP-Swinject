//
//  LoginWireframe.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - LoginViewControllerDelegate

protocol LoginViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - ILoginWireframe

protocol ILoginWireframe {
    func presentView()
}

// MARK: - LoginWireframe

class LoginWireframe: ILoginWireframe {
    var appRouter: IAppRouter
    weak var delegate: LoginViewControllerDelegate?

    init(appRouter: IAppRouter, delegate: LoginViewControllerDelegate?) {
        self.appRouter = appRouter
        self.delegate = delegate
    }

    func presentView() {
        let view = appRouter.resolver.resolve(LoginViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
}
