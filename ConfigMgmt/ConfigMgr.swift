//
//  ConfigMgr
//  ConfigMgmt
//
//  Created by Jeff on 1/27/16.
//  Copyright © 2016 jdp. All rights reserved.
//

import Foundation

class ConfigMgr {
    static let sharedInstance = ConfigMgr()
    
    let version = "Version"
    let build = "Build"
    
    
    var buildConfig: String? = .None
    var buildVariables: [String: AnyObject]? = .None
    
    init() {
        buildConfig = NSBundle.mainBundle().infoDictionary?["Configuration"] as? String
        let configPath = NSBundle.mainBundle().pathForResource("Config", ofType: "plist")
        
        // Load the Config plist into buildVariables
        if let path = configPath, config = buildConfig {
            if let variables = NSDictionary(contentsOfFile: path) as? [String: AnyObject] {
                buildVariables = variables[config] as? [String: AnyObject]
            }
        } else {
            print("Could not load the configuration file: \(buildConfig)")
        }
    }
    
    // MARK: Variable getters
    var versionNum: String? {
        get {
            guard let bv = buildVariables
                else {return .None}
            
            return bv[version] as? String
        }
    }
    
    var buildNum: String? {
        get {
            if let bv = buildVariables {
                return bv[build] as? String
            } else {
                return .None
            }
        }
    }
    
    var NotSetNum: String? {
        get {
            guard let bv = buildVariables
                else {return .None}
            
            return bv["notsetnum"] as? String
        }
    }
}
