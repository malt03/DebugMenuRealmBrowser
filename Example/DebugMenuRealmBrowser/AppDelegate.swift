//
//  AppDelegate.swift
//  DebugMenuRealmBrowser
//
//  Created by Koji Murata on 07/19/2016.
//  Copyright (c) 2016 Koji Murata. All rights reserved.
//

import UIKit
import DebugHead
import DebugMenuRealmBrowser

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    DebugMenuRealmBrowserViewController.prepare(moduleName: "DebugMenuRealmBrowser_Example")
    DebugHead.shared.prepare(menuClasses: [DebugMenuRealmBrowserViewController.self])
    return true
  }
}

