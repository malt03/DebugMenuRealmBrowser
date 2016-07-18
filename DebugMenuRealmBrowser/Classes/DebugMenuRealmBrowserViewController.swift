//
//  DebugMenuRealmBrowserViewController.swift
//  Pods
//
//  Created by Koji Murata on 2016/07/19.
//
//

import DebugHead
import RealmBrowser

public class DebugMenuRealmBrowserViewController: DebugMenu {
  private static var moduleName = ""
  private static var objectSearchEnabled = true

  public static func prepare(moduleName moduleName: String, objectSearchEnabled: Bool = true) {
    self.moduleName = moduleName
    self.objectSearchEnabled = objectSearchEnabled
  }

  public static let debugMenuTitle = "Realm Browser"
  public static let debugMenuAccessoryType = UITableViewCellAccessoryType.DisclosureIndicator
  public static let debugMenuDangerLevel = DebugMenuDangerLevel.Low
  public static func debugMenuSelected(debugHead: UIView, debugMenuTableViewController: UITableViewController) -> UIViewController? {
    return RealmBrowser.instantiate(moduleName: moduleName, withNavigationController: false, objectSearchEnabled: objectSearchEnabled)
  }
}
