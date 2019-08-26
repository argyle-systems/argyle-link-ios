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
    
    let EXISTING_WORKER_TOKEN_KEY = "EXISTING_EORKER_TOKEN_KEY"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Argyle.shared
            .loginWith(pluginKey: "646dc138-5942-4eb6-a9ca-dd01b6d57ae9", apiHost: "https://api-sandbox.develop.argyle.io/v1")
            //            .dataPartners(["amazon_flex", "uber"])
            .resultListener(self)
    }
    
    @IBAction func argyleNewWorker(_ sender: Any) {
        self.present(Argyle.shared.updateToken("").controller, animated: true, completion: nil)
    }
    
    @IBAction func argyleExistingWorker(_ sender: Any) {
        if let token = UserDefaults.standard.value(forKey: EXISTING_WORKER_TOKEN_KEY) as? String {
            _ = Argyle.shared.updateToken(token)
            self.present(Argyle.shared.controller, animated: true, completion: nil)
        } else {
            showNoExistingToken()
        }
    }
    
    func showNoExistingToken() {
        let alert = UIAlertController(title: "Error!", message: "No stored worker token found.", preferredStyle: .alert)
        
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
    
    func onAccountConnected(accountId: String, workerId: String) {
        print("APP: onAccountConnected(accountId: \(accountId), workerId: \(workerId))")
    }
    
    func onAccountRemoved(accountId: String, workerId: String) {
        print("APP: onAccountRemoved(accountId: \(accountId), workerId: \(workerId))")
    }
    
    func onWorkerCreated(token: String, workerId: String) {
        print("APP: onWorkerCreated((token: \(token), workerId: \(workerId))")
        UserDefaults.standard.set(token, forKey: EXISTING_WORKER_TOKEN_KEY)
    }
    
    func onError(error: ArgyleErrorType) {
        print("APP: onError(error: \(error.rawValue))")
    }
    
    func onTokenExpired(handler: (String) -> ()) {
        handler("New Token")
    }
    
}


