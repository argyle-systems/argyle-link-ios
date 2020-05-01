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

    let EXISTING_USER_TOKEN_KEY = "EXISTING_USER_TOKEN_KEY"

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Argyle.shared
            .loginWith(pluginKey: "YOUR_PLUGIN_KEY", apiHost: "https://api-sandbox.argyle.io/v1")
            .companyName("My Company")
            //.dataPartners(["amazon_flex", "uber"])
            .resultListener(self)
    }

    @IBAction func argyleNewUser(_ sender: Any) {
        let argyle = Argyle.shared.updateToken("").controller
        argyle.modalPresentationStyle = .fullScreen
        self.present(argyle, animated: true, completion: nil)
    }

    @IBAction func argyleExistingUser(_ sender: Any) {
        if let token = UserDefaults.standard.value(forKey: EXISTING_USER_TOKEN_KEY) as? String {
            let argyle = Argyle.shared.updateToken(token).controller
            argyle.modalPresentationStyle = .fullScreen
            self.present(argyle, animated: true, completion: nil)
        } else {
            showNoExistingToken()
        }
    }

    func showNoExistingToken() {
        let alert = UIAlertController(title: "Error!", message: "No stored user token found.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "OK", style: .cancel , handler:{ (UIAlertAction)in

        }))

        if let popoverController = alert.popoverPresentationController {
            popoverController.sourceRect = CGRect(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2, width: 0, height: 0)
            popoverController.sourceView = self.view
            popoverController.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)
        }

        self.present(alert, animated: true, completion: nil)
    }

}

extension ViewController: ArgyleResultListener {

    func onAccountCreated(accountId: String, userId: String, dataPartner:String) {
        print("APP: onAccountCreated(accountId: \(accountId), userId: \(userId), dataPartner \(dataPartner))")
    }

    func onAccountConnected(accountId: String, userId: String, dataPartner:String) {
        print("APP: onAccountConnected(accountId: \(accountId), userId: \(userId), dataPartner \(dataPartner))")
    }

    func onAccountUpdated(accountId: String, userId: String, dataPartner:String) {
        print("APP: onAccountUpdated(accountId: \(accountId), userId: \(userId), dataPartner \(dataPartner))")
    }

    func onAccountRemoved(accountId: String, userId: String, dataPartner:String) {
        print("APP: onAccountRemoved(accountId: \(accountId), userId: \(userId), dataPartner \(dataPartner))")
    }

    func onUserCreated(token: String, userId: String) {
        print("APP: onWorkerCreated((token: \(token), userId: \(userId))")
        UserDefaults.standard.set(token, forKey: EXISTING_USER_TOKEN_KEY)
    }

    func onError(error: ArgyleErrorType) {
        print("APP: onError(error: \(error.rawValue))")
    }

    func onTokenExpired(handler: @escaping (String) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            handler("New token")
        }
    }

    func onClose() {
        print("APP: onClose")
    }

}
