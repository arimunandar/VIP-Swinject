//
//  FoodProducts.swift
//  VIPFoodApi
//
//  Created by Ari Munandar on 03/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import Foundation
import AppsRouter

public enum FoodProducts: AppModule {
    case FoodHomeModule

    public var productName: String {
        return "FoodProducts"
    }

    public var routePath: String {
        switch self {
        case .FoodHomeModule:
            return "/vip/foodhome"
        }
    }
}
