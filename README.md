# Argyle iOS SDK example project

Argyle iOS Link SDK provides a way to integrate [Argyle Link](https://argyle.io/docs/argyle-link) into your iOS app.

If you are looking to update Argyle Link to the newest version, navigate to [upgrade guide](https://github.com/argyle-systems/argyle-link-ios/blob/master/Migration.md).

**Requirements:**
- iOS 12.0+
- Xcode 13.0+
- Swift 5+ 
  
**Note:** We recommend you to lock your app to portrait orientation.

---

### 1. Adding the SDK dependency

**CocoaPods**

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Argyle into your Xcode project using CocoaPods, specify it in your `Podfile:`

`pod 'Argyle', '3.x.x'`

Use `pod install` and `pod update` commands to install/update pods afterward.

--- 

**Carthage**

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate Argyle into your Xcode project using Carthage, specify it in your `Cartfile:`

`github "argyle-systems/argyle-plugin-ios" == 3.x.x`

### 2. Configuring and starting the flow

```swift
class ViewController: UIViewController {

    override func viewDidLoad() {
        _ = Argyle.shared
        .loginWith(linkKey: "YOUR_LINK_KEY", apiHost: "https://api-sandbox.argyle.com/v1")
        .linkItems(["amazon_flex", "uber"]) // Can be skipped if all Link items are needed
        .resultListener(self)
    }

    @IBAction func argyleNewUser(_ sender: Any) {
        let argyle = Argyle.shared.controller
        argyle.modalPresentationStyle = .fullScreen
        self.present(argyle, animated: true, completion: nil)
    }
}

extension ViewController: ArgyleResultListener {

    func onUserCreated(token: String, userId: String) {
        print("APP: onUserCreated((token: \(token), userId: \(userId))")
    }

    func onAccountCreated(accountId: String, userId: String, linkItemId: String) {
        print("APP: onAccountCreated(accountId: \(accountId), userId: \(userId), linkItemId: \(linkItemId))")
    }

    func onAccountConnected(accountId: String, userId: String, linkItemId: String) {
        print("APP: onAccountConnected(accountId: \(accountId), userId: \(userId), linkItemId: \(linkItemId))")
    }

    func onAccountUpdated(accountId: String, userId: String, linkItemId: String) {
        print("APP: onAccountUpdated(accountId: \(accountId), userId: \(userId), linkItemId: \(linkItemId))")
    }

    func onAccountRemoved(accountId: String, userId: String, linkItemId: String) {
        print("APP: onAccountRemoved(accountId: \(accountId), userId: \(userId), linkItemId: \(linkItemId))")
    }

    func onAccountError(accountId: String, userId: String, linkItemId: String) {
        print("APP: onAccountError(accountId: \(accountId), userId: \(userId), linkItemId: \(linkItemId))")
    }

    func onPayDistributionSuccess(accountId: String, userId: String, linkItemId: String) {
        print("APP: onPayDistributionSuccess(accountId: \(accountId), userId: \(userId), linkItemId: \(linkItemId))")
    }

    func onPayDistributionError(accountId: String, userId: String, linkItemId: String) {
        print("APP: onPayDistributionError(accountId: \(accountId), userId: \(userId), linkItemId: \(linkItemId))")
    }

    func onError(error: ArgyleErrorType) {
        print("APP: onError(error: \(error.rawValue))")
    }

    func onUIEvent(name: String, properties: [String: Any]) {
        print("APP: onUIEvent(name: \(name), properties: \(properties)")
    }    

    func onTokenExpired(handler: @escaping (String) -> ()) {
        handler("new_token")
    }

    func onClose() {
        print("APP: onClose")
    }
}
```

#### Closing  Link programmatically

Normally, Link is closed by the user but it can also be closed by calling `Argyle.shared.close()`.
