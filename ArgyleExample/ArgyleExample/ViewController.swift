//
//  ViewController.swift
//  ArgyleExample
//
//  Created on 26/08/2019.
//  Copyright © 2019 argyle. All rights reserved.
//

import UIKit
import Argyle

class ViewController: UIViewController {

    private let USER_TOKEN = "YOUR_USER_TOKEN"
    private let LINK_KEY = "YOUR_LINK_KEY"

    @IBAction func startLink(_ sender: Any) {
        var config = LinkConfig(linkKey: LINK_KEY, userToken: USER_TOKEN, sandbox: true)

//        Limit search to the specified items only
//        config.items = ["item_000025742", "item_000014039"]

//        Take the user directly to a connected account
//        config.accountId = "ACCOUNT_ID"

//        Use customization, more info: https://docs.argyle.com/guides/docs/customize
//        config.customizationId = "00000000"

//         Use direct deposit switching, more info: https://docs.argyle.com/guides/docs/direct-deposit-switching
//        config.ddsConfig = "YOUR_DDS_CONFIG"

        setupCallbacks(&config)
        ArgyleLink.start(from: self, config: config)
    }

    private func setupCallbacks(_ config: inout LinkConfig) {

        config.onCantFindItemClicked = { itemID in
            print("onCantFindItemClicked \(itemID)")
        }

        config.onAccountCreated = { accountData in
            print("onAccountCreated (accountId: \(accountData.accountId), itemId: \(accountData.itemId), userId: \(accountData.userId))")
        }

        config.onAccountConnected = { accountData in
            print("onAccountConnected (accountId: \(accountData.accountId), itemId: \(accountData.itemId), userId: \(accountData.userId))")
        }

        config.onAccountRemoved = { accountData in
            print("onAccountRemoved (accountId: \(accountData.accountId), itemId: \(accountData.itemId), userId: \(accountData.userId))")
        }

        config.onAccountError = { accountData in
            print("onAccountError (accountId: \(accountData.accountId), itemId: \(accountData.itemId), userId: \(accountData.userId))")
        }

        config.onDDSSuccess = { accountData in
            print("onDDSSuccess (accountId: \(accountData.accountId), itemId: \(accountData.itemId), userId: \(accountData.userId))")
        }

        config.onDDSError = { accountData in
            print("onDDSError (accountId: \(accountData.accountId), itemId: \(accountData.itemId), userId: \(accountData.userId))")
        }

        config.onFormSubmitted = { formData in
            print("onFormSubmitted (accountId: \(formData.accountId), userId: \(formData.userId))")
        }

        config.onDocumentsSubmitted = { formData in
            print("onDocumentsSubmitted (accountId: \(formData.accountId), userId: \(formData.userId))")
        }

        config.onError = { linkError in
            print("onError (errorType: \(linkError.errorType), errorMessage: \(linkError.errorMessage), errorDetails: \(linkError.errorDetails ?? ""))")
        }

        config.onClose = {
            print("onClose")
        }

        config.onTokenExpired = { handler in
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                handler("YOUR_NEW_TOKEN")
            }
        }

        config.onExitIntroClicked = {
            print("onExitIntroClicked")
        }

        config.onUIEvent = { uiEvent in
            var message = "onUIEvent (name: \(uiEvent.name), properties: "
            for prop in uiEvent.properties {
                message.append("(\(prop.key): \(prop.value))")
            }
            message.append(")")
            print(message)
        }
    }
}
