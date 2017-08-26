//
//  Coordinator.swift
//  FJMVVMC
//
//  Created by Franklin Buitron on 8/26/17.
//  Copyright © 2017 Franklin Buitron. All rights reserved.
//

import Foundation

protocol Coordinator {
    var childCoordinators: [Coordinator] {get set}
    func start()
}
