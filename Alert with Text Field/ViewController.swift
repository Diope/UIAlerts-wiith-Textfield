//
//  ViewController.swift
//  Alert with Text Field
//
//  Created by Dion Pettaway on 12/22/15.
//  Copyright © 2015 Dipet_Low. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: IBAction Functions
    @IBAction func loginButton(sender: AnyObject) {
        var usernameTextField: UITextField?
        var passwordTextField: UITextField?
        
        let ac = UIAlertController(title: "Log In", message: "Please enter your log in information", preferredStyle: .Alert)
        
        let loginAction = UIAlertAction(title: "Log In", style: .Default) {(action) -> Void in
            
            if let username = usernameTextField?.text {
                print(" Username = \(username)")
            } else {
                print("No username has been entered")
            }
            
            if let password = passwordTextField?.text {
                print(" Password = \(password)")
            } else {
                print("No password has been entered")
            }
        }
        
        ac.addTextFieldWithConfigurationHandler {
            (txtUsername) -> Void in
            usernameTextField = txtUsername
            usernameTextField!.placeholder = "<Your username here>"
        }
        
        ac.addTextFieldWithConfigurationHandler {
            (txtPassword) -> Void in
            passwordTextField = txtPassword
            passwordTextField!.secureTextEntry = true
            passwordTextField!.placeholder = "<Your password here>"
        }
        
        ac.addAction(loginAction)
        self.presentViewController(ac, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

