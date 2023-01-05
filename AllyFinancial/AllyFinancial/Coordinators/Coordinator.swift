//
//  Coordinator.swift
//  AllyFinancial
//
//  Created by Consultant on 12/16/22.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
//    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
    func makeViewController() -> UIViewController
}
