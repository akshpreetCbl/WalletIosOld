//
//  AppDelegate.swift
//  Example
//
//  Created by Code-Brew on 22/05/24.
//

import UIKit
import WalletIos


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        WalletIOSConfig.Config()
//        Theme.updateNavigationBarTheme()
//
//        window = ThemeWindow(frame: UIScreen.main.bounds)
//        window?.makeKeyAndVisible()
//
//        do {
//            try App.initApp()
//            App.instance?.appManager.didFinishLaunching()
//            window?.rootViewController = LaunchModule.viewController()
//        } catch {
////            window?.rootViewController = LaunchErrorViewController(error: error)
//        }

        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

