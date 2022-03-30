# Migrating to Link 4
## Learn how to upgrade to the newest Link version.
If you are looking to integrate Argyle Link for the first time navigate to [integration guide](https://github.com/argyle-systems/argyle-link-ios#readme).

- [iOS SDK upgrade guide](#ios-sdk-upgrade-guide)
- [Migrating from Link 3](#migrating-from-link-3)

---
## iOS SDK upgrade guide
### Review the changes in the latest version
Before you upgrade to a new version of the Link SDK, you should review the [Releases page](https://github.com/argyle-systems/argyle-link-ios/releases). This will help you to understand any changes that you will need to make in your code as the result of an upgrade.

We strongly recommend upgrading the SDK as soon as there is a new version available. Doing so will help you to provide the best Argyle Link experience in your application.

---
### Upgrade to a new SDK version

`The minimum supported iOS version is iOS 12.`

**Previously installed the Argyle iOS SDK using pod files**


1. Run `pod outdated` to see if there is a newer version of the Argyle iOS SDK available. You can also refer to the [release notes](https://github.com/argyle-systems/argyle-link-ios/releases).

2. If a newer version of the SDK is found, update your `Podfile` with this new version. See [Specifying pod versions](https://guides.cocoapods.org/using/the-podfile.html#specifying-pod-versions) to learn how to set a specific version in your `Podfile`. 

3. Run `pod update` to update the SDK with the new version.

4. Make any necessary changes as a result of the upgrade.

5. Clean and rebuild your project by selecting **Product > Clean** and then **Product > Build**.

---

**Previously installed the Argyle iOS SDK using Carthage**

1. Run `carthage outdated` to see if there is a newer version of the Argyle iOS SDK available. You can also refer to the [release notes](https://github.com/argyle-systems/argyle-link-ios/releases).

2. If a newer version of the SDK is found, update your `Cartfile` with the new version. See [Version requirements](https://github.com/Carthage/Carthage/blob/master/Documentation/Artifacts.md#version-requirement) to learn how to set a specific version in your `Cartfile`.

3. Run `carthage update` to update the SDK with the new version.

4. Make any necessary changes as a result of the upgrade.

5. Clean and rebuild your project by selecting **Product > Clean** and then **Product > Build**.
---

**Previously installed the Argyle iOS SDK by manually downloading the SDK**

1. Download the current newest SDK and replace the old one.

2. Make any necessary changes as a result of the upgrade.

3. Clean and rebuild your project by selecting **Product > Clean** and then **Product > Build**.

---


**To avoid issues and crashes, update your SDK to the latest version before you compile your app. If you manually downloaded your SDK framework locally, you should make sure you are using the latest SDK version.**

---

To verify your SDK version, you can read your `Podfile.lock` and check the `PODS: 'Insert'` value.

---
## Migrating from Link 3
### Updated configuration attribute

If you're using a previous version of Link and would like to migrate to the new version, please find below the single changed configuration attribute.

---

**pluginKey: renamed**

The property was renamed to `linkKey`.

---

### Updated error code

A name of the error code returned via `onError` callback is also changed to reflect the update of configuration attribute.

---

[Link Initialization error](https://argyle.com/docs/developer-tools/link-initialization-errors#) **invalid_plugin_key: renamed**

The error was renamed to `invalid_link_key`.

---
