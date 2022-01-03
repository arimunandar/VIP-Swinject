//
//  RideHomePresenter.swift
//  VIPRide
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IRideHomePresenter

protocol IRideHomePresenter: AnyObject {
    // do someting...
}

// MARK: - RideHomePresenter

class RideHomePresenter: IRideHomePresenter {
    weak var view: IRideHomeViewController?

    init(view: IRideHomeViewController?) {
        self.view = view
    }
}
