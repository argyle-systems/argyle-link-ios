# Argyle iOS SDK

Argyle Link iOS SDK provides a way to integrate [Argyle Link](https://argyle.io/docs/argyle-link) into your iOS app.

If you are looking to update Argyle Link to the newest version, navigate to [upgrade guide](https://github.com/argyle-systems/argyle-link-ios/blob/master/UPGRADING.md).

**Requirements:**
- iOS 12.0+
- Xcode 13.0+
- Swift 5+ 
  
**Note:** We recommend you to lock your app to portrait orientation.

---

## 1. Add the SDK dependency

**CocoaPods**

![pod](https://img.shields.io/cocoapods/v/Argyle?style=for-the-badge)

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Argyle into your Xcode project using CocoaPods, specify it in your `Podfile:`

`pod 'Argyle', '4.x.x'`

Use `pod install` and `pod update` commands to install/update pods afterward.

--- 

**Carthage**

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate Argyle into your Xcode project using Carthage, specify it in your `Cartfile:`

`github "argyle-systems/argyle-plugin-ios" == 4.x.x`

## 2. Update Info.plist
For users to have a seamless [multi-factor authentication verification experience](https://argyle.com/docs/products/link-4#mfa-screen) Argyle Link SDK supports direct opening of an email client. For this to work the list of supported clients has to be defined for `LSApplicationQueriesSchemes` property in your `Info.plist` file.
```
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>googlegmail</string>
    <string>ymail</string>
    <string>ms-outlook</string>
</array>
```

## 3. Configure and integrate Link
### 1. Access your Link API Key
1. Log into your [Console](https://console.argyle.com/api-keys) instance
2. Navigate to the [API Keys](https://console.argyle.com/api-keys) area under the Developer menu
3. Copy your Sandbox or Production Link API Key for use in configuration

### 2. Utilize user tokens
For successful implementation you need to make sure to utilize user tokens correctly. Learn how to do it in Argyle [returning user experience guide](https://argyle.com/docs/products/returning-users-experience#suggested-flow-for-user-token-usage) before continuing onto the next step.

### 3. Integrate Link
See [Example](https://github.com/argyle-systems/argyle-link-ios/tree/master/ArgyleExample) for sample implementation.
