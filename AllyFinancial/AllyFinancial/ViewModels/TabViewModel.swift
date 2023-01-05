//
//  TabViewModel.swift
//  AllyFinancial
//
//  Created by Consultant on 1/4/23.
//

import Foundation
import UIKit

protocol TabViewModelType {
    
//    func configView(view: SnapshotViewController) -> UIView
    var logoutButton: UIButton {get}
    var messageButton: UIButton {get}
    var chatButton: UIButton {get}
    var helpButton: UIButton {get}
}

class TabViewModel {
    
    init() {
//        initToArea()
    }
}

extension TabViewModel: TabViewModelType {
    
    var logoutButton: UIButton {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Log Out", for: .normal)
        button.configuration?.titleAlignment = .center
        
        return button
    }
    var messageButton: UIButton  {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "envelope"), for: .normal)
//        button.topAnchor.constraint(equalTo: UIView().safeAreaLayoutGuide.topAnchor).isActive = true
        
        return button
    }
    var chatButton: UIButton {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "message"), for: .normal)
        
        return button
    }
    var helpButton: UIButton {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "questionmark.circle"), for: .normal)
        
        return button
    }
    
}
