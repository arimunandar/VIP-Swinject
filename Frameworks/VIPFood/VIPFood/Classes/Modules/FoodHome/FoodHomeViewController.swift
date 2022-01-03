//
//  FoodHomeViewController.swift
//  VIPFood
//
//  Created by Ari Munandar on 02/01/22.
//  Copyright (c) 2022 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IFoodHomeViewController

protocol IFoodHomeViewController: AnyObject {
    // do someting...
}

// MARK: - FoodHomeViewController

class FoodHomeViewController: UIViewController {
    var interactor: IFoodHomeInteractor?
    var wireframe: IFoodHomeWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()        
        // do someting...
    }
    
    @IBAction func didShowLogin(_ sender: Any) {
        wireframe?.navigateToAuthLogin()
    }
}

// MARK: IFoodHomeViewController

extension FoodHomeViewController: IFoodHomeViewController {
    // do someting...
}

// MARK: FoodHomeViewControllerDelegate

extension FoodHomeViewController: FoodHomeViewControllerDelegate {
    // do someting...
}
