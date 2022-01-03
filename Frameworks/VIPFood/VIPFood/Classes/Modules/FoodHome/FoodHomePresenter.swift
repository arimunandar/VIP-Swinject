//
//  FoodHomePresenter.swift
//  VIPFood
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IFoodHomePresenter

protocol IFoodHomePresenter: AnyObject {
    // do someting...
}

// MARK: - FoodHomePresenter

class FoodHomePresenter: IFoodHomePresenter {
    weak var view: IFoodHomeViewController?

    init(view: IFoodHomeViewController?) {
        self.view = view
    }
}
