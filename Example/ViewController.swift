//
//  ViewController.swift
//  Example
//
//  Created by Code-Brew on 22/05/24.
//

import UIKit
import WalletIos
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        WalletIOSConfig.Config()
//        let cls = WalletIOSConfig()
//        cls.Config()
       let vc = MarketModule.viewController()
//        self.view = vc.view
        self.addChild(vc)
        // Set the frame or constraints of the child view
              vc.view.frame = self.view.bounds // or set up Auto Layout constraints
              self.view.addSubview(vc.view)

              // Notify the child view controller that it has been moved to a parent
              vc.didMove(toParent: self)
        // Do any additional setup after loading the view.
        
        
        
//        let viewController = MarketPlaceVC() //MarketModule.viewController() //MarketPlaceVC()
//          guard let rootViewController = UIApplication.shared.keyWindow?.rootViewController else {
//              return
//          }
//          rootViewController.addChild(viewController)
//          addSubview(viewController.view)
//          viewController.view.frame = self.bounds
//          viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//          viewController.didMove(toParent: rootViewController)
    }


}

