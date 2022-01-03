//
//  AuthRouters.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//

import Foundation
import AppsRouter
import Swinject
import VIPAuthApi

public class AuthRouters: IAppProductRouter {
    let router: IAppRouter

    let modules: [String: (IAppRouter) -> IAppModule] = [
        AuthProducts.LoginModule.routePath: { LoginModule($0) },
        AuthProducts.RegisterModule.routePath: { RegisterModule($0) }
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
            LoginAssembly(),
            RegisterAssembly()
        ]
    }
}
