//
//  RideHomeViewController.swift
//  VIPRide
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IRideHomeViewController

protocol IRideHomeViewController: AnyObject {
    // do someting...
}

// MARK: - RideHomeViewController

class RideHomeViewController: UIViewController {
    var interactor: IRideHomeInteractor?
    var wireframe: IRideHomeWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
        // do someting...
    }
}

// MARK: IRideHomeViewController

extension RideHomeViewController: IRideHomeViewController {
    // do someting...
}

// MARK: RideHomeViewControllerDelegate

extension RideHomeViewController: RideHomeViewControllerDelegate {
    // do someting...
}
