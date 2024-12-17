//
//  AppDelegate.swift
//  cdc-assessment-1
//
//  Created by Rock$on on 2024/12/17.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let cryptoVC = CryptoListViewController()
        window?.rootViewController = UINavigationController(rootViewController: cryptoVC)
        window?.makeKeyAndVisible()
        return true
    }

}

