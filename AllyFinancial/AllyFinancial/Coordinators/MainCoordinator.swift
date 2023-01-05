//
//  MainCoordinator.swift
//  AllyFinancial
//
//  Created by Consultant on 12/29/22.
//

import Foundation
import UIKit


class MainCoordinator: Coordinator {

    var navigationController: UINavigationController
    var tabCoord: UIViewController?
    var loginCoord: UIViewController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        self.navigationController.pushViewController(makeTabController(), animated: true)
        let login = makeLoginController()
        login.view.isHidden = false
        login.modalPresentationStyle = .fullScreen
        DispatchQueue.main.async {
            self.navigationController.present(login, animated: true)
        }
        
        
        
        let message = UIBarButtonItem(image: UIImage(systemName: "envelope"), style: .plain, target: self, action: #selector(self.messagePressed))
        let chat = UIBarButtonItem(image: UIImage(systemName: "message"), style: .plain, target: self, action: #selector(self.chatPressed))
        let help = UIBarButtonItem(image: UIImage(systemName: "questionmark.circle"), style: .plain, target: self, action: #selector(self.questionPressed))
        
        self.navigationController.navigationItem.rightBarButtonItems = [help, message, chat]
        


    }
    func makeTabController() -> UIViewController {
        self.tabCoord = TabCoordinator(navigationController: self.navigationController).makeViewController()
        self.navigationController.navigationItem.backButtonTitle = "logout"
        
        return self.tabCoord ?? UIViewController()
    }
    func makeLoginController() -> UIViewController {
        self.loginCoord = LoginCoordinator(navigationController: self.navigationController).makeViewController()
//        self.navigationController.present(self.loginCoord ?? UIViewController(), animated: true)
        return self.loginCoord ?? UIViewController()
    }
    func makeViewController() -> UIViewController {
        return UIViewController()
    }
    @objc
    func messagePressed() {
        print("message pressed")
    }
    
    @objc
    func chatPressed() {
        print("chat pressed")
    }
    
    @objc
    func questionPressed() {
        print("question mark pressed")
    }
    
    
}
