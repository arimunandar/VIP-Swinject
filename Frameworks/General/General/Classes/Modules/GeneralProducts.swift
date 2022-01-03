//
//  GeneralProducts.swift
//  General
//
//  Created by Ari Munandar on 03/01/22.
//

import Foundation

import Foundation
import UIKit
import AppsRouter

public enum GeneralProducts: AppModule {
    case MainModule

    public var productName: String {
        return "GeneralProducts"
    }

    public var routePath: String {
        switch self {
        case .MainModule:
            return "/vip/main"
        }
    }
}
