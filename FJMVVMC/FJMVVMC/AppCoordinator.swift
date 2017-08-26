//
//  AppCoordinator.swift
//  FJMVVMC
//
//  Created by Franklin Buitron on 8/26/17.
//  Copyright © 2017 Franklin Buitron. All rights reserved.
//

import Foundation
import UIKit

class FJApplicationCoordinator: Coordinator {
    var rootViewController: UINavigationController
    var childCoordinators: [Coordinator]
    
    init(navViewController: UINavigationController) {
        self.childCoordinators = []
        self.rootViewController = navViewController
    }
    
    static func createRootViewController() -> UIViewController {
        let navViewController = UINavigationController()
        return navViewController;
    }
    
    func start() {
        let principalListCoordinator = ListCoordinator(navCoordinator: self.rootViewController)
        self.childCoordinators.append(principalListCoordinator)
        principalListCoordinator.start()
    }
}
