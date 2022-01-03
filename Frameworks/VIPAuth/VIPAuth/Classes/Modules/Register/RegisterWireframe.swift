//
//  RegisterWireframe.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - RegisterViewControllerDelegate

protocol RegisterViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - IRegisterWireframe

protocol IRegisterWireframe {
    func presentView()
}

// MARK: - RegisterWireframe

class RegisterWireframe: IRegisterWireframe {
    var appRouter: IAppRouter
    weak var delegate: RegisterViewControllerDelegate?

    init(appRouter: IAppRouter, delegate: RegisterViewControllerDelegate?) {
        self.appRouter = appRouter
        self.delegate = delegate
    }

    func presentView() {
        let view = appRouter.resolver.resolve(RegisterViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
}
