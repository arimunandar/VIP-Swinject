//
//  MainWireframe.swift
//  General
//
//  Created by Ari Munandar on 03/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter
import VIPFoodApi
import VIPRideApi

// MARK: - MainViewControllerDelegate

protocol MainViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - IMainWireframe

protocol IMainWireframe {
    func presentView()
    func getRideHome() -> UIViewController?
    func getFoodHome() -> UIViewController?
}

// MARK: - MainWireframe

class MainWireframe: IMainWireframe {
    var appRouter: IAppRouter
    weak var delegate: MainViewControllerDelegate?

    init(appRouter: IAppRouter, delegate: MainViewControllerDelegate?) {
        self.appRouter = appRouter
        self.delegate = delegate
    }

    func presentView() {
        let view = appRouter.resolver.resolve(MainViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
    
    func getFoodHome() -> UIViewController? {
        guard let foodHome = appRouter.getModule(module: FoodProducts.FoodHomeModule) else { return nil }
        foodHome.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
        return foodHome
    }
    
    func getRideHome() -> UIViewController? {
        guard let rideHome = appRouter.getModule(module: RideProducts.RideHomeModule) else { return nil }
        rideHome.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        return rideHome
    }
}
