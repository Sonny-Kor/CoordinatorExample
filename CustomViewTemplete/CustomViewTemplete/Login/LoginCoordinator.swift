//
//  LoginCoordinator.swift
//  CustomViewTemplete
//
//  Created by 승재 on 4/16/24.
//

import UIKit

protocol LoginCoordinatorDelegate {
    func didLoggedIn(_ coordinator: LoginCoordinator)
}

class LoginCoordinator: Coordinator, LoginViewControllerDelegate {

    var childCoordinators: [Coordinator] = []
    var delegate: LoginCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        print("hmm")
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        viewController.view.backgroundColor = .brown
        viewController.delegate = self
        
        self.navigationController.viewControllers = [viewController]
        // 여기서 navigation push를 하든 present를 하든 custom Present Animation을 하든 만들면 될듯
    }
    
    func login() {
        self.delegate?.didLoggedIn(self)
    }
}
