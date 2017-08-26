//
//  ListCoordinator.swift
//  FJMVVMC
//
//  Created by Franklin Buitron on 8/26/17.
//  Copyright © 2017 Franklin Buitron. All rights reserved.
//

import Foundation
import UIKit
class ListCoordinator : Coordinator {
    var rootViewController: UINavigationController
    var childCoordinators: [Coordinator]
    
    init(navCoordinator: UINavigationController) {
        self.childCoordinators = [];
        self.rootViewController = navCoordinator
    }
    
    func start() {
        let listVC = ViewController()
        self.rootViewController.pushViewController(listVC, animated: true);
    }
}
