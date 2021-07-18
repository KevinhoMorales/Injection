//
//  AppDelegate.swift
//  Injection
//
//  Created by Kevinho Morales on 17/7/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setUpInitView()
        return true
    }
    
    private func setUpInitView() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let networkManager = NetworkManager()
        window?.rootViewController = HomeViewController(viewModel: HomeViewModel(manager: networkManager))
        window?.makeKeyAndVisible()
    }
    
    
}

