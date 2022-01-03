//
//  FoodHomeInteractor.swift
//  VIPFood
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IFoodHomeInteractor

protocol IFoodHomeInteractor: AnyObject {
    // do someting...
}

// MARK: - FoodHomeInteractor

class FoodHomeInteractor: IFoodHomeInteractor {
    var manager: IFoodHomeManager?
    var presenter: IFoodHomePresenter?

    init(presenter: IFoodHomePresenter?, manager: IFoodHomeManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
