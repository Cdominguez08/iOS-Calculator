//
//  AppDelegate.swift
//  iOS-Calculator
//
//  Created by Cesar Dominguez on 28/09/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    
        //Setup view
        setupView()
        
        return true
    }

    // MARK: - Private methods
    
    private func setupView(){
    
        window = UIWindow(frame: UIScreen.main.bounds) // instancia el window
        
        let vc = HomeViewController()
        
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }

}
