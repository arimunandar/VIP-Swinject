//
//  RegisterPresenter.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IRegisterPresenter

protocol IRegisterPresenter: AnyObject {
    // do someting...
}

// MARK: - RegisterPresenter

class RegisterPresenter: IRegisterPresenter {
    weak var view: IRegisterViewController?

    init(view: IRegisterViewController?) {
        self.view = view
    }
}
