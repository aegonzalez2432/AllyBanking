//
//  ProfileViewController.swift
//  AllyFinancial
//
//  Created by Consultant on 12/14/22.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    let navVC: UINavigationController?
    let tabVM: TabViewModelType
    
    init(navVC: UINavigationController?, tabVM: TabViewModelType) {
        self.navVC = navVC
        self.tabVM = tabVM
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        self.view.tintColor = .white
        self.title = "Profile"
        createUI()
    }
    
    func createUI() {
        let tab = tabVM
        let logoutButton = tab.logoutButton
        let helpButton = tab.helpButton
        let messageButton = tab.messageButton
        let chatButton = tab.chatButton
        
        logoutButton.addTarget(self, action: #selector(logoutPressed), for: .touchUpInside)
        helpButton.addTarget(self, action: #selector(helpPressed), for: .touchUpInside)
        messageButton.addTarget(self, action: #selector(messagePressed), for: .touchUpInside)
        chatButton.addTarget(self, action: #selector(chatPressed), for: .touchUpInside)
        
        self.view.addSubview(logoutButton)
        self.view.addSubview(helpButton)
        self.view.addSubview(chatButton)
        self.view.addSubview(messageButton)
//        tab.configView(view: self)
        logoutButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        logoutButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        logoutButton.widthAnchor.constraint(equalToConstant: 80).isActive = true

        helpButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        helpButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        helpButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        helpButton.widthAnchor.constraint(equalToConstant: 44).isActive = true

        messageButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        messageButton.trailingAnchor.constraint(equalTo: helpButton.leadingAnchor, constant: 1).isActive = true
        messageButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        messageButton.widthAnchor.constraint(equalToConstant: 44).isActive = true

        chatButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        chatButton.trailingAnchor.constraint(equalTo: messageButton.leadingAnchor, constant: 1).isActive = true
        chatButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        chatButton.widthAnchor.constraint(equalToConstant: 44).isActive = true
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
    func helpPressed() {
        print("question mark pressed")
    }
    @objc
    func logoutPressed() {
        print("Logout pressed")
        let lc = LoginCoordinator(navigationController: navVC ?? UINavigationController()).makeViewController()
        lc.modalPresentationStyle = .fullScreen

        self.navVC?.present(lc, animated: true)
    }
}
