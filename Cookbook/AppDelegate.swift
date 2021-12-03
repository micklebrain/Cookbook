//
//  AppDelegate.swift
//  Cookbook
//
//  Created by Nathan Nguyen on 11/25/21.
//

import Foundation
import Amplify
import AmplifyPlugins
import AWSCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.configure()
            
#if DEBUG
            Amplify.Logging.logLevel = .debug
#else
            Amplify.Logging.logLevel = .error
#endif
        } catch {
            print("Error initializing Amplify. \(error)")
        }
        return true
    }
}
