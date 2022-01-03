//
//  AppDelegate.swift
//  VIPModularizationDemo
//
//  Created by Ari Munandar on 02/01/22.
//

import UIKit
import VIPAuth
import VIPFood
import VIPRide
import VIPAuthApi
import VIPFoodApi
import VIPRideApi
import AppsRouter
import Swinject

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithTransparentBackground()
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }

        let products: [String: (_ appRouter: IAppRouter) -> IAppProductRouter] = [
            AppProducts.AuthProducts.productName: { AuthRouters(router: $0) },
            AppProducts.RideProducts.productName: { RideRouters(router: $0) },
            AppProducts.FoodProducts.productName: { FoodRouters(router: $0) }
        ]

        var assemblies: [Assembly] = []
        assemblies.append(contentsOf: AuthRouters.getAssemblies())
        assemblies.append(contentsOf: RideRouters.getAssemblies())
        assemblies.append(contentsOf: FoodRouters.getAssemblies())

        AppRouter.setAppRouter(products: products, assemblies: assemblies)
        AppRouter.shared.presentModule(module: RideProducts.RideHomeModule, presentType: .root)
        return true
    }
}
