//
//  MainCoordinator.swift
//  AllyFinancial
//
//  Created by Consultant on 12/16/22.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
//    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
    }
    
    func start() {
//        self.navigationController.setViewControllers([makeViewController()], animated: true)
        self.navigationController.modalPresentationStyle = .fullScreen
        DispatchQueue.main.async {
            self.navigationController.present(self.makeViewController(), animated: true)

        }

        self.navigationController.isNavigationBarHidden = true
//        self.navigationController.navigationItem.setRightBarButton(UIBarButtonItem(title: "Logout", style: .plain, target: self, action: nil), animated: true)


    }
    
    func makeViewController() -> UIViewController {
        let login = LoginViewController(navController: navigationController)
        return login
    }
    
    
}
