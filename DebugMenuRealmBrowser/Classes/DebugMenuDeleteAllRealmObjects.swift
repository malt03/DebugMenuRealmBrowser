//
//  DebugMenuDeleteAllRealmObjects.swift
//  Pods
//
//  Created by Koji Murata on 2017/01/18.
//
//

import DebugHead
import RealmSwift

open class DebugMenuDeleteAllRealmObjects: DebugMenu {
  open static let debugMenuTitle = "Delete all realm objects"
  open static let debugMenuAccessoryType = UITableViewCellAccessoryType.none
  open static let debugMenuDangerLevel = DebugMenuDangerLevel.extreme
  open static func debugMenuSelected(_ debugHead: UIView, debugMenuTableViewController: UITableViewController) -> UIViewController? {
    let alert = UIAlertController(title: nil, message: "Delete all realm objects", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .destructive) { _ in
      let realm = try! Realm()
      try! realm.write {
        realm.deleteAll()
      }
    })
    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    debugMenuTableViewController.present(alert, animated: true, completion: nil)
    return nil
  }
}
