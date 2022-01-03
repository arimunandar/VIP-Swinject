//
//  MainInteractor.swift
//  General
//
//  Created by Ari Munandar on 03/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IMainInteractor

protocol IMainInteractor: AnyObject {
    // do someting...
}

// MARK: - MainInteractor

class MainInteractor: IMainInteractor {
    var manager: IMainManager?
    var presenter: IMainPresenter?

    init(presenter: IMainPresenter?, manager: IMainManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
