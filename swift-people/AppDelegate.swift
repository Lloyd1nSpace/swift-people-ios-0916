//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let me = Person(name: "Lloyd", ageInYears: 27)
        print(me.celebrateBirthday())
        print("This is Lloyd's age: \(me.ageInYears)")
        
        return true
    }
}

