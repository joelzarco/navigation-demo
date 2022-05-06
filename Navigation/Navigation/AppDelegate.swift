//
//  AppDelegate.swift
//  Navigation
//
//  Created by Johel Zarco on 04/05/22.
//

import UIKit

@main

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application : UIApplication, didFinishLaunchingWithOptions launchOptions : [UIApplication.LaunchOptionsKey : Any]?) -> Bool{
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .black
        let controller = ViewController()
        // needs to be enbebbed in navigation controller
        let navController = UINavigationController(rootViewController: controller)
        window?.rootViewController = navController
        return true
    }

}

