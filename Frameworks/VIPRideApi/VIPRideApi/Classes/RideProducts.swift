//
//  RideProducts.swift
//  VIPRideApi
//
//  Created by Ari Munandar on 03/01/22.
//

import Foundation
import UIKit
import AppsRouter

public enum RideProducts: AppModule {
    case RideHomeModule

    public var productName: String {
        return "RideProducts"
    }

    public var routePath: String {
        switch self {
        case .RideHomeModule:
            return "/vip/ridehome"
        }
    }
}
