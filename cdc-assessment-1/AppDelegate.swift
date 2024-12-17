//
//  AppDelegate.swift
//  cdc-assessment-1
//
//  Created by Samuel Opoku-Agyemang on 2024/12/17.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let cryptoListVC = CryptoListViewController()
        window?.rootViewController = UINavigationController(rootViewController: cryptoListVC)
        window?.makeKeyAndVisible()
        return true
    }

}

