# Argyle iOS SDK

## Table of contents

* [Overview](#overview)
* [Requirements](#requirements)
* [Installation](#installation)
* [Getting started](#getting-started)

## Overview

This SDK provides a drop-in set of screens and tools for iOS applications. Argyle lets your customers share with you their worker-specific data from the workforce platforms, such as Uber, Postmates, Doordash and others. 

It works in the following way:

- Customer logs in to their workforce accounts on your app.
- Behind the scenes, Argyle pulls data across the platforms.
- You can use Argyle's API to retrieve customer's earnings, length of work, ratings and other data.

## Important note

We recommend you to lock your app to a portrait orientation.

## Requirements

- iOS 11.0+
- Xcode 10.2+
- Swift 5+

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Argyle into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'Argyle'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate Argyle into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "argyle-systems/argyle-plugin-ios" == 1.1.10
```

## Getting started


### 1. Configurate the SDK Configuration

Login to SDK using your `pluginKey`, along with the `apiHost`, and `userToken` (optional).

Provide `ArgyleResultListener` delegate to handle SDK callbacks.

Swift

``` swift
    _ = Argyle.shared
        .loginWith(pluginKey: yourPluginKey, apiHost: apiHost, userToken: token)
        .resultListener(self)
```

Argyle SDK callbacks:

``` swift
func onAccountConnected(accountId: String, userId: String)
```
A callback function invoked when user connects a new account. The function will be passed an object containing `accountId` and `userId`.

``` swift
func onAccountRemoved(accountId: String, userId: String)
```
A callback function invoked when user removes a connected account. The function will be passed an object containing `accountId` and `userId`.

``` swift
func onUserCreated(token: String, userId: String)
```
A callback function invoked when a new user is created. The function will be passed an object containing `userId` and `userToken`. User is created on the first attempt of a new user to connect an account.

``` swift
func onError(error:ArgyleErrorType)
```
A callback function invoked when an error occured. The function will be passed an object containing error type (`NO_CONNECTION`, `SERVER_ERROR`, `EXPIRED_TOKEN`). 

``` swift
func onTokenExpired(handler: @escaping (String)->())
```
A callback function invoked when an existing token is expired. The function will be passed a callback function to provide new token to the SDK.

### 2. Customize an array of data partner

Provide SDK with an array of data partner IDs you want Argyle's SDK to display. Use this parameter to limit the number of data partners that your users can connect. Defaults to [] which shows all available data partners.

``` swift
    _ = Argyle.shared
        .dataPartners(["amazon_flex", "uber"])
```

### 3. Starting the flow

Access Argyle NavigationController and present it from your ViewController

Swift 

``` swift
let controller = Argyle.shared.controller
controller.modalPresentationStyle = .fullScreen //Optionally confugurate presentation style
self.present(controller, animated: true, completion: nil)
```

Congratulations! You have successfully started the flow.
