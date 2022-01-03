//
//  RideHomeWireframe.swift
//  VIPRide
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - RideHomeViewControllerDelegate

protocol RideHomeViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - IRideHomeWireframe

protocol IRideHomeWireframe {
    func presentView()
}

// MARK: - RideHomeWireframe

class RideHomeWireframe: IRideHomeWireframe {
    var appRouter: IAppRouter
    weak var delegate: RideHomeViewControllerDelegate?

    init(appRouter: IAppRouter, delegate: RideHomeViewControllerDelegate?) {
        self.appRouter = appRouter
        self.delegate = delegate
    }

    func presentView() {
        let view = appRouter.resolver.resolve(RideHomeViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
}
