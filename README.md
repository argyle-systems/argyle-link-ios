# Argyle iOS SDK
![release](https://img.shields.io/github/v/release/argyle-systems/argyle-link-ios?style=for-the-badge)

Argyle’s iOS Link SDK provides a way to integrate [Link](https://docs.argyle.com/guides/docs/argyle-link-overview) into your iOS app.

First-time installation instructions are below.

**************************Requirements:**************************

- iOS 15.0+
- Xcode 14.0+
- Swift 5.5+

## Installing the SDK

The Argyle iOS SDK is distributed via [Swift Package Manager](https://www.swift.org/package-manager/).

**…in Xcode:**

1. Within your Xcode project, select File > Add Package Dependencies…
2. Enter `https://github.com/argyle-systems/argyle-link-ios` as the package URL
3. Choose the "Up to Next Major Version" dependency rule and add the `Argyle` library to your app target ([example project](https://github.com/argyle-systems/argyle-link-ios/tree/master/ArgyleExample))

See [adding Swift package dependencies in Xcode](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app#Add-a-package-dependency) for more information.

**…in `Package.swift`:**

```swift
dependencies: [
    .package(url: "https://github.com/argyle-systems/argyle-link-ios", from: "5.15.2")
],
targets: [
    .target(name: "YourApp", dependencies: [
        .product(name: "Argyle", package: "argyle-link-ios")
    ])
]
```

**CocoaPods**

The Argyle pod is no longer updated, as CocoaPods trunk is moving to read-only. Previously published versions remain installable, but new SDK versions are released through Swift Package Manager only. To migrate, remove `pod 'Argyle'` from your `Podfile`, run `pod install`, then add the package as described above. No code changes are needed: the module is still imported with `import Argyle`.

## Directly opening email clients

To enhance the multi-factor authentication (MFA) experience of users, the Link SDK supports directly opening the user’s email client. To enable this feature…

1. Add the following property to your `Info.plist` file:

```
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>googlegmail</string>
    <string>ymail</string>
    <string>ms-outlook</string>
</array>
```

## Implementing Link

1. Log-in to Console and retrieve a copy of your [Link key](https://console.argyle.com/link-key)
2. Create a user token:
- **New users**
    1. Create a new user by sending a **POST** to the [users endpoint](https://docs.argyle.com/guides/reference/create-a-user) of the Argyle API
    2. The response payload will include an `id` and `user_token`
    3. Save the `id` for quickly creating user tokens for this user in the future
    4. Initialize Link by passing the `user_token` as the value for the `userToken` parameter
- **Returning users**
    1. Send a **POST** request to the [user-tokens endpoint](https://docs.argyle.com/guides/reference/create-a-user-token) of the Argyle API
        - Include the `id` of the user in the request body as a JSON object in the format `{"user": "<id>"}`
    2. A `user_token` will be included in the response payload
    3. Initialize Link by passing the `user_token` as the value for the `userToken` parameter
1. Initialize Link using the Link key and user token. 

<aside>
ℹ️ Make sure the Link key matches the environment of the `sandbox` parameter.

</aside>

Example Link initialization for iOS:

```swift
var config = LinkConfig(
    linkKey: "YOUR_LINK_KEY",
    userToken: "USER_TOKEN",
    sandbox: true // Set to false for production environment.
)
// (Optional) Limit Link search to these Items:
config.items = ["item_000001422", "item_000025742"]
// (Optional) Callback examples:
config.onAccountConnected = { data in
    print("Result: onAccountConnected \(data)")
}
config.onAccountError = { data in
    print("Result: onAccountError \(data)")
}
config.onDDSSuccess = { data in
    print("Result: onDDSSuccess \(data)")
}
config.onDDSError = { data in
    print("Result: onDDSError \(data)")
}
config.onTokenExpired = { handler in
		print("onTokenExpired")
		// generate your new token here
    // handler(newToken)
}

ArgyleLink.start(from: viewController, config: config)
```
