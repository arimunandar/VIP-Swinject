//
//  LoginModule.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - LoginModule

public class LoginModule: IAppModule {
    let appRouter: IAppRouter

    public init(_ appRouter: IAppRouter) {
        self.appRouter = appRouter
    }

    public func presentView(parameters: IAppParameter?) {
        let delegate = appRouter.resolver.resolve(LoginViewController.self, argument: appRouter)!
        let wireframe = appRouter.resolver.resolve(ILoginWireframe.self, arguments: appRouter, delegate as LoginViewControllerDelegate)!
        wireframe.presentView()
    }

    public func createView(parameters: IAppParameter?) -> UIViewController {
        let view = appRouter.resolver.resolve(LoginViewController.self, argument: appRouter)!
        return view
    }
}
