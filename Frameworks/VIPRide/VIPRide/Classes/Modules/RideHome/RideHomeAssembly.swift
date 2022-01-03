//
//  RideHomeAssembly.swift
//  VIPRide
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import Foundation
import Swinject
import AppsRouter

// MARK: - RideHomeAssembly

class RideHomeAssembly: Assembly {
    func assemble(container: Container) {
        container.register(IRideHomeManager.self) {(r) in
            return RideHomeManager()
        }.inObjectScope(.transient)
        
        container.register(IRideHomeWireframe.self) { (_, appRouter: IAppRouter, delegate: RideHomeViewControllerDelegate) in
            RideHomeWireframe(appRouter: appRouter, delegate: delegate)
        }.inObjectScope(.transient)

        container.register(IRideHomeInteractor.self) { (r, view: IRideHomeViewController) in
            let presenter = r.resolve(IRideHomePresenter.self, argument: view)
            let manager = r.resolve(IRideHomeManager.self)
            let interactor = RideHomeInteractor(presenter: presenter, manager: manager)
            return interactor
        }.inObjectScope(.transient)

        container.register(IRideHomePresenter.self) { (_, view: IRideHomeViewController) in
            let presenter = RideHomePresenter(view: view)
            return presenter
        }.inObjectScope(.transient)

        container.register(RideHomeViewController.self) { (r, appRouter: IAppRouter) in
            let bundle = Bundle(for: type(of: self))
            let view = RideHomeViewController(nibName: "RideHomeViewController", bundle: bundle)
            let interactor = r.resolve(IRideHomeInteractor.self, argument: view as IRideHomeViewController)
            let wireframe = r.resolve(IRideHomeWireframe.self, arguments: appRouter, view as RideHomeViewControllerDelegate)
            view.interactor = interactor
            view.wireframe = wireframe
            return view
        }.inObjectScope(.transient)
    }
}