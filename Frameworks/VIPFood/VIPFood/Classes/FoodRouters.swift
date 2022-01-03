//
//  FoodRouters.swift
//  VIPFood
//
//  Created by Ari Munandar on 03/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import Foundation
import AppsRouter
import Swinject
import VIPFoodApi

public class FoodRouters: IAppProductRouter {
    let router: IAppRouter

    let modules: [String: (IAppRouter) -> IAppModule] = [
        FoodProducts.FoodHomeModule.routePath: { FoodHomeModule($0) }
    ]

    public init(router: IAppRouter) {
        self.router = router
    }

    public func getModule(module: AppModule, parameters: IAppParameter?) -> UIViewController? {
        if let moduleConstructor = modules[module.routePath] {
            let module = moduleConstructor(router)
            return module.createView(parameters: parameters)
        }
        return nil
    }

    public func presentModule(module: AppModule, parameters: IAppParameter?) {
        if let moduleConstructor = modules[module.routePath] {
            let module = moduleConstructor(router)
            module.presentView(parameters: parameters)
        }
    }

    open class func getAssemblies() -> [Assembly] {
        return [
            FoodHomeAssembly()
        ]
    }
}

