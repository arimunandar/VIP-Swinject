//
//  RegisterAssembly.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import Foundation
import Swinject
import AppsRouter

// MARK: - RegisterAssembly

class RegisterAssembly: Assembly {
    func assemble(container: Container) {
        container.register(IRegisterManager.self) {(r) in
            return RegisterManager()
        }.inObjectScope(.transient)
        
        container.register(IRegisterWireframe.self) { (_, appRouter: IAppRouter, delegate: RegisterViewControllerDelegate) in
            RegisterWireframe(appRouter: appRouter, delegate: delegate)
        }.inObjectScope(.transient)

        container.register(IRegisterInteractor.self) { (r, view: IRegisterViewController) in
            let presenter = r.resolve(IRegisterPresenter.self, argument: view)
            let manager = r.resolve(IRegisterManager.self)
            let interactor = RegisterInteractor(presenter: presenter, manager: manager)
            return interactor
        }.inObjectScope(.transient)

        container.register(IRegisterPresenter.self) { (_, view: IRegisterViewController) in
            let presenter = RegisterPresenter(view: view)
            return presenter
        }.inObjectScope(.transient)

        container.register(RegisterViewController.self) { (r, appRouter: IAppRouter) in
            let bundle = Bundle(for: type(of: self))
            let view = RegisterViewController(nibName: "RegisterViewController", bundle: bundle)
            let interactor = r.resolve(IRegisterInteractor.self, argument: view as IRegisterViewController)
            let wireframe = r.resolve(IRegisterWireframe.self, arguments: appRouter, view as RegisterViewControllerDelegate)
            view.interactor = interactor
            view.wireframe = wireframe
            return view
        }.inObjectScope(.transient)
    }
}