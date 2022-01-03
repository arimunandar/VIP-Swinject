//
//  VIPAuthModule.swift
//  VIPAuthApi
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

public enum AuthProducts: AppModule {
    case LoginModule
    case RegisterModule

    public var productName: String {
        return "AuthProducts"
    }

    public var routePath: String {
        switch self {
        case .LoginModule:
            return "/vip/login"
        case .RegisterModule:
            return "/vip/register"
        }
    }
}
