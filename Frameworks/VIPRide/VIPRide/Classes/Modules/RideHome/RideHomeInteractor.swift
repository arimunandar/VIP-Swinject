//
//  RideHomeInteractor.swift
//  VIPRide
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IRideHomeInteractor

protocol IRideHomeInteractor: AnyObject {
    // do someting...
}

// MARK: - RideHomeInteractor

class RideHomeInteractor: IRideHomeInteractor {
    var manager: IRideHomeManager?
    var presenter: IRideHomePresenter?

    init(presenter: IRideHomePresenter?, manager: IRideHomeManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
