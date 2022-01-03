//
//  AppProducts.swift
//  VIPModularizationDemo
//
//  Created by Ari Munandar on 02/01/22.
//

import Foundation
import UIKit

// MARK: - AppProducts

public enum AppProducts {
    case AuthProducts
    case RideProducts
    case FoodProducts

    public var productName: String {
        switch self {
        case .AuthProducts:
            return "AuthProducts"
        case .RideProducts:
            return "RideProducts"
        case .FoodProducts:
            return "FoodProducts"
        }
    }
}
