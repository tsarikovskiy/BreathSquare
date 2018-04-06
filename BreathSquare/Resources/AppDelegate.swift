//
//  AppDelegate.swift
//  BreathSquare
//
//  Created by Serg Tsarikovskiy on 17.03.2018.
//  Copyright © 2018 Serg Tsarikovskiy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.rootViewController = BreathLessonFactory.make()
    window?.makeKeyAndVisible()

    return true
  }
}

