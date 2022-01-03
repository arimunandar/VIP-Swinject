//
//  RegisterInteractor.swift
//  VIPAuth
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IRegisterInteractor

protocol IRegisterInteractor: AnyObject {
    // do someting...
}

// MARK: - RegisterInteractor

class RegisterInteractor: IRegisterInteractor {
    var manager: IRegisterManager?
    var presenter: IRegisterPresenter?

    init(presenter: IRegisterPresenter?, manager: IRegisterManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
