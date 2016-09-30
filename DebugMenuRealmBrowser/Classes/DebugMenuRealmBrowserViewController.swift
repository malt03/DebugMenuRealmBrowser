//
//  DebugMenuRealmBrowserViewController.swift
//  Pods
//
//  Created by Koji Murata on 2016/07/19.
//
//

import DebugHead
import RealmBrowser

open class DebugMenuRealmBrowserViewController: DebugMenu {
  fileprivate static var moduleName = ""
  fileprivate static var objectSearchEnabled = true

  open static func prepare(moduleName: String, objectSearchEnabled: Bool = true) {
    self.moduleName = moduleName
    self.objectSearchEnabled = objectSearchEnabled
  }

  open static let debugMenuTitle = "Realm Browser"
  open static let debugMenuAccessoryType = UITableViewCellAccessoryType.disclosureIndicator
  open static let debugMenuDangerLevel = DebugMenuDangerLevel.low
  open static func debugMenuSelected(_ debugHead: UIView, debugMenuTableViewController: UITableViewController) -> UIViewController? {
    RealmBrowser.incorrectModuleNameMessage = "Please call DebugMenuRealmBrowserViewController.prepare with correct module name."
    return RealmBrowser.instantiate(moduleName: moduleName, withNavigationController: false, objectSearchEnabled: objectSearchEnabled)
  }
}
