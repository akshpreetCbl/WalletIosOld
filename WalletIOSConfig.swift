//
//  WalletIOSConfig.swift
//  WalletIos
//
//  Created by Admin on 22/05/24.
//

import Foundation
import UIKit
import ThemeKit

public class WalletIOSConfig {
    var window: UIWindow?
    public init(){}
    
    public static func Config (){
        print("WalletIOSConfig class is configured")
     Theme.updateNavigationBarTheme()
//     window = ThemeWindow(frame: UIScreen.main.bounds)
//     window?.makeKeyAndVisible()
     
     do {
         try App.initApp()
//         App.instance?.appManager.didFinishLaunching()
//         window?.rootViewController = LaunchModule.viewController()
     } catch {
         print("WalletIOSConfig class error is ",error)
//         window?.rootViewController = LaunchErrorViewController(error: error)
     }
    }
        
}
