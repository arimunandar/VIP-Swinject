//
//  LoginAssembly.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import Foundation
import Swinject
import AppsRouter

// MARK: - LoginAssembly

class LoginAssembly: Assembly {
    func assemble(container: Container) {
        container.register(ILoginManager.self) {(r) in
            return LoginManager()
        }.inObjectScope(.transient)
        
        container.register(ILoginWireframe.self) { (_, appRouter: IAppRouter, delegate: LoginViewControllerDelegate) in
            LoginWireframe(appRouter: appRouter, delegate: delegate)
        }.inObjectScope(.transient)

        container.register(ILoginInteractor.self) { (r, view: ILoginViewController) in
            let presenter = r.resolve(ILoginPresenter.self, argument: view)
            let manager = r.resolve(ILoginManager.self)
            let interactor = LoginInteractor(presenter: presenter, manager: manager)
            return interactor
        }.inObjectScope(.transient)

        container.register(ILoginPresenter.self) { (_, view: ILoginViewController) in
            let presenter = LoginPresenter(view: view)
            return presenter
        }.inObjectScope(.transient)

        container.register(LoginViewController.self) { (r, appRouter: IAppRouter) in
            let bundle = Bundle(for: type(of: self))
            let view = LoginViewController(nibName: "LoginViewController", bundle: bundle)
            let interactor = r.resolve(ILoginInteractor.self, argument: view as ILoginViewController)
            let wireframe = r.resolve(ILoginWireframe.self, arguments: appRouter, view as LoginViewControllerDelegate)
            view.interactor = interactor
            view.wireframe = wireframe
            return view
        }.inObjectScope(.transient)
    }
}