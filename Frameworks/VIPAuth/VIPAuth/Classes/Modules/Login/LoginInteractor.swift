//
//  LoginInteractor.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - ILoginInteractor

protocol ILoginInteractor: AnyObject {
    // do someting...
}

// MARK: - LoginInteractor

class LoginInteractor: ILoginInteractor {
    var manager: ILoginManager?
    var presenter: ILoginPresenter?

    init(presenter: ILoginPresenter?, manager: ILoginManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
