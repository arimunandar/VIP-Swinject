//
//  FoodHomeWireframe.swift
//  VIPFood
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter
import VIPAuthApi

// MARK: - FoodHomeViewControllerDelegate

protocol FoodHomeViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - IFoodHomeWireframe

protocol IFoodHomeWireframe {
    func presentView()
    func navigateToAuthLogin()
}

// MARK: - FoodHomeWireframe

class FoodHomeWireframe: IFoodHomeWireframe {
    var appRouter: IAppRouter
    weak var delegate: FoodHomeViewControllerDelegate?

    init(appRouter: IAppRouter, delegate: FoodHomeViewControllerDelegate?) {
        self.appRouter = appRouter
        self.delegate = delegate
    }

    func presentView() {
        let view = appRouter.resolver.resolve(FoodHomeViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
    
    func navigateToAuthLogin() {
        appRouter.presentModule(module: AuthProducts.LoginModule)
    }
}
