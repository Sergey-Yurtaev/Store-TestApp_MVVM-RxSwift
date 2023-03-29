//
//  AppDelegate.swift
//  Store-TestApp_MVVM-RxSwift
//
//  Created by  Sergey Yurtaev on 20.03.2023.
//

import UIKit
import CoreData

 @main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = StartTabBarController()
        
//        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.overrideUserInterfaceStyle = .light
        
        return true
    }

}

