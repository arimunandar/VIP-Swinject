//
//  MainModule.swift
//  General
//
//  Created by Ari Munandar on 03/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - MainModule

public class MainModule: IAppModule {
    let appRouter: IAppRouter

    public init(_ appRouter: IAppRouter) {
        self.appRouter = appRouter
    }

    public func presentView(parameters: IAppParameter?) {
        let delegate = appRouter.resolver.resolve(MainViewController.self, argument: appRouter)!
        let wireframe = appRouter.resolver.resolve(IMainWireframe.self, arguments: appRouter, delegate as MainViewControllerDelegate)!
        wireframe.presentView()
    }

    public func createView(parameters: IAppParameter?) -> UIViewController {
        let view = appRouter.resolver.resolve(MainViewController.self, argument: appRouter)!
        return view
    }
}
