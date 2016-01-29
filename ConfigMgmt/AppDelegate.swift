//
//  AppDelegate.swift
//  ConfigMgmt
//
//  Created by Jeff on 1/27/16.
//  Copyright © 2016 jdp. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
        // Have to set a view controller, or you'll get an error       
        self.window!.rootViewController = UIViewController()
        
        // Show a few build variables
        print("VersionNum: \(ConfigMgr.sharedInstance.versionNum)")
        print("BuildNum: \(ConfigMgr.sharedInstance.buildNum)")
        print("NotSetNum: \(ConfigMgr.sharedInstance.NotSetNum)")
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
    }

    func applicationDidEnterBackground(application: UIApplication) {
    }

    func applicationWillEnterForeground(application: UIApplication) {
    }

    func applicationDidBecomeActive(application: UIApplication) {
    }

    func applicationWillTerminate(application: UIApplication) {
    }
}

