# DebugMenuRealmBrowser

[![Platform](https://img.shields.io/cocoapods/p/DebugMenuRealmBrowser.svg?style=flat)](http://cocoapods.org/pods/DebugMenuRealmBrowser)
![Language](https://img.shields.io/badge/language-Swift%203.0-orange.svg)
[![CocoaPods](https://img.shields.io/cocoapods/v/DebugMenuRealmBrowser.svg?style=flat)](http://cocoapods.org/pods/DebugMenuRealmBrowser)
![License](https://img.shields.io/github/license/malt03/DebugMenuRealmBrowser.svg?style=flat)

![Screenshot](https://raw.githubusercontent.com/malt03/DebugMenuRealmBrowser/master/Screenshot.gif)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

```swift
func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
  DebugMenuRealmBrowserViewController.prepare(moduleName: "<module name>")
  DebugHead.sharedInstance.prepare(menuClasses: [DebugMenuRealmBrowserViewController.self])
  return true
}
```

## Installation

DebugMenuRealmBrowser is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DebugMenuRealmBrowser"
```

## Author

Koji Murata, malt.koji@gmail.com

## License

DebugMenuRealmBrowser is available under the MIT license. See the LICENSE file for more info.
