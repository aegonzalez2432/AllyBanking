//
//  TabCoordinator.swift
//  AllyFinancial
//
//  Created by Consultant on 12/19/22.
//

//TODO: Start with tabBar, present Login modally,
//TODO: CHange coordinators around, create main coordinators to hold reference to all coordinators so universally accessible. 


import Foundation
import UIKit

class TabCoordinator: Coordinator {
//    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.navigationItem.backButtonTitle = "Log out"

    }
    
    func start() {
        self.navigationController.pushViewController(makeViewController(), animated: true)
//        navigationController.setViewControllers([makeViewController()], animated: true)
        self.navigationController.navigationItem.backButtonTitle = "logiout"

        
    }
    
    func makeViewController() -> UIViewController {
        let rootVC = UITabBarController()
        self.navigationController.isNavigationBarHidden = false
        rootVC.tabBar.backgroundColor = .white
        rootVC.navigationItem.backButtonTitle = "Log out"
        rootVC.navigationController?.navigationItem.title = "Logout"
        rootVC.navigationController?.view.contentMode = .center

        let snap = SnapshotViewController(navigationController: navigationController, tabModelType: TabViewModel() )
        snap.tabBarItem = UITabBarItem(title: "Snapshot", image: UIImage(systemName: "house.circle"), tag: 0)
        snap.navigationItem.backButtonTitle = "logout"
        
        
        let tasks = TasksViewController(navVC: navigationController, tabViewModel: TabViewModel())
        tasks.tabBarItem = UITabBarItem(title: "Tasks", image: UIImage(systemName: "arrow.left.arrow.right.circle"), tag: 1)
        
        let insights = InsightsViewController(navVC: navigationController, tabVM: TabViewModel())
        insights.tabBarItem = UITabBarItem(title: "Insights", image: UIImage(systemName: "lightbulb.circle"), tag: 2)
        
        let profile = ProfileViewController(navVC: navigationController, tabVM: TabViewModel())
        profile.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle"), tag: 3)
        
        let explore = ExploreViewController(navVC: navigationController, tabVM: TabViewModel())
        explore.tabBarItem = UITabBarItem(title: "Explore", image: UIImage(systemName: "safari"), tag: 4)
        rootVC.setViewControllers([snap,tasks, insights, profile, explore], animated: false)
        
        return rootVC
    }
    
    
}
