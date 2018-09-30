//
//  AppDelegate.swift
//  Instagram_replica
//
//  Created by kairi on 9/27/18.
//  Copyright © 2018 kairi. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        // Override point for customization after application launch.
        //return true
        Parse.initialize(
            with: ParseClientConfiguration(block: { (configuration: ParseMutableClientConfiguration) -> Void in
                configuration.applicationId = "instagram-replica"
                configuration.clientKey = "Hai7ley0Xion3Natsu9648" // set to nil assuming you have not set clientKey
                configuration.server = "https://fathomless-fjord-94286.herokuapp.com/parse"

            }) )
    return true

    }


    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
       
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}

