//
//  AppCoordinator.swift
//  TinderClone
//
//  Created by Deep Parekh on 8/11/17.
//
//

import UIKit
class AppCoordinator: Coordinator {

    var appViewController: UIViewController?
    var appChildCoordinators: [Coordinator]?
    var profileCoordinator: Coordinator?
    var matchCoordinator: Coordinator?

    var viewController: UIViewController? {
        return appViewController
    }
    
    var childCoordinators: [Coordinator]? {
        return appChildCoordinators
    }
    
    func start(withAnimation animation: Bool) {
        appViewController = TinderRootViewController()
        appChildCoordinators = [Coordinator]()
    }
    
    func end(withAnimation animation: Bool) {
        appViewController?.navigationController?.popViewController(animated: animation)
        appViewController = nil
    }
}
