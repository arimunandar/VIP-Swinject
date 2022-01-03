//
//  FoodHomeAssembly.swift
//  VIPFood
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import Foundation
import Swinject
import AppsRouter

// MARK: - FoodHomeAssembly

class FoodHomeAssembly: Assembly {
    func assemble(container: Container) {
        container.register(IFoodHomeManager.self) {(r) in
            return FoodHomeManager()
        }.inObjectScope(.transient)
        
        container.register(IFoodHomeWireframe.self) { (_, appRouter: IAppRouter, delegate: FoodHomeViewControllerDelegate) in
            FoodHomeWireframe(appRouter: appRouter, delegate: delegate)
        }.inObjectScope(.transient)

        container.register(IFoodHomeInteractor.self) { (r, view: IFoodHomeViewController) in
            let presenter = r.resolve(IFoodHomePresenter.self, argument: view)
            let manager = r.resolve(IFoodHomeManager.self)
            let interactor = FoodHomeInteractor(presenter: presenter, manager: manager)
            return interactor
        }.inObjectScope(.transient)

        container.register(IFoodHomePresenter.self) { (_, view: IFoodHomeViewController) in
            let presenter = FoodHomePresenter(view: view)
            return presenter
        }.inObjectScope(.transient)

        container.register(FoodHomeViewController.self) { (r, appRouter: IAppRouter) in
            let bundle = Bundle(for: type(of: self))
            let view = FoodHomeViewController(nibName: "FoodHomeViewController", bundle: bundle)
            let interactor = r.resolve(IFoodHomeInteractor.self, argument: view as IFoodHomeViewController)
            let wireframe = r.resolve(IFoodHomeWireframe.self, arguments: appRouter, view as FoodHomeViewControllerDelegate)
            view.interactor = interactor
            view.wireframe = wireframe
            return view
        }.inObjectScope(.transient)
    }
}