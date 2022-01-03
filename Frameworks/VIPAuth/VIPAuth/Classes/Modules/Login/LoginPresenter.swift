//
//  LoginPresenter.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - ILoginPresenter

protocol ILoginPresenter: AnyObject {
    // do someting...
}

// MARK: - LoginPresenter

class LoginPresenter: ILoginPresenter {
    weak var view: ILoginViewController?

    init(view: ILoginViewController?) {
        self.view = view
    }
}
