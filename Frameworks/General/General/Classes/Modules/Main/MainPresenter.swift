//
//  MainPresenter.swift
//  General
//
//  Created by Ari Munandar on 03/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IMainPresenter

protocol IMainPresenter: AnyObject {
    // do someting...
}

// MARK: - MainPresenter

class MainPresenter: IMainPresenter {
    weak var view: IMainViewController?

    init(view: IMainViewController?) {
        self.view = view
    }
}
