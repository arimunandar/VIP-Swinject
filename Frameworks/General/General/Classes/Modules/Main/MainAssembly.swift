//
//  MainAssembly.swift
//  General
//
//  Created by Ari Munandar on 03/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import Foundation
import Swinject
import AppsRouter

// MARK: - MainAssembly

class MainAssembly: Assembly {
    func assemble(container: Container) {
        container.register(IMainManager.self) {(r) in
            return MainManager()
        }.inObjectScope(.transient)
        
        container.register(IMainWireframe.self) { (_, appRouter: IAppRouter, delegate: MainViewControllerDelegate) in
            MainWireframe(appRouter: appRouter, delegate: delegate)
        }.inObjectScope(.transient)

        container.register(IMainInteractor.self) { (r, view: IMainViewController) in
            let presenter = r.resolve(IMainPresenter.self, argument: view)
            let manager = r.resolve(IMainManager.self)
            let interactor = MainInteractor(presenter: presenter, manager: manager)
            return interactor
        }.inObjectScope(.transient)

        container.register(IMainPresenter.self) { (_, view: IMainViewController) in
            let presenter = MainPresenter(view: view)
            return presenter
        }.inObjectScope(.transient)

        container.register(MainViewController.self) { (r, appRouter: IAppRouter) in
            let bundle = Bundle(for: type(of: self))
            let view = MainViewController(nibName: "MainViewController", bundle: bundle)
            let interactor = r.resolve(IMainInteractor.self, argument: view as IMainViewController)
            let wireframe = r.resolve(IMainWireframe.self, arguments: appRouter, view as MainViewControllerDelegate)
            view.interactor = interactor
            view.wireframe = wireframe
            return view
        }.inObjectScope(.transient)
    }
}