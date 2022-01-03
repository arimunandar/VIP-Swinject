//
//  MainViewController.swift
//  General
//
//  Created by Ari Munandar on 03/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IMainViewController

protocol IMainViewController: AnyObject {
    // do someting...
}

// MARK: - MainViewController

class MainViewController: UITabBarController {
    var interactor: IMainInteractor?
    var wireframe: IMainWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
        // do someting...
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let foodHome = wireframe?.getFoodHome() else { return }
        guard let rideHome = wireframe?.getRideHome() else { return }
        viewControllers = [foodHome, rideHome].map({ UINavigationController(rootViewController: $0) })        
    }
}

// MARK: IMainViewController

extension MainViewController: IMainViewController {
    // do someting...
}

// MARK: MainViewControllerDelegate

extension MainViewController: MainViewControllerDelegate {
    // do someting...
}
