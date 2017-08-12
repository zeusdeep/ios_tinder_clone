//
//  AppDelegate.swift
//  TinderClone
//
//  Created by Deep Parekh on 8/11/17.
//  Copyright © 2017 TripAdvisor. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let appCoordinator = AppCoordinator()
        appCoordinator.start(withAnimation: true)
        guard let rootViewController = appCoordinator.viewController else {
            return false
        }
        window?.rootViewController = UINavigationController(rootViewController: rootViewController)
        window?.makeKeyAndVisible()
        return true
    }
}

