//
//  FoodHomeModule.swift
//  VIPFood
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - FoodHomeModule

public class FoodHomeModule: IAppModule {
    let appRouter: IAppRouter

    public init(_ appRouter: IAppRouter) {
        self.appRouter = appRouter
    }

    public func presentView(parameters: IAppParameter?) {
        let delegate = appRouter.resolver.resolve(FoodHomeViewController.self, argument: appRouter)!
        let wireframe = appRouter.resolver.resolve(IFoodHomeWireframe.self, arguments: appRouter, delegate as FoodHomeViewControllerDelegate)!
        wireframe.presentView()
    }

    public func createView(parameters: IAppParameter?) -> UIViewController {
        let view = appRouter.resolver.resolve(FoodHomeViewController.self, argument: appRouter)!
        return view
    }
}
